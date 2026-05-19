from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parent


def read_project_file(relative_path: str) -> str:
    return (ROOT / relative_path).read_text(encoding="utf-8")


def parse_php_constants(relative_path: str = "config.php") -> dict[str, object]:
    content = read_project_file(relative_path)
    matches = re.findall(r"const\s+([A-Z0-9_]+)\s*=\s*([^;]+);", content)
    constants: dict[str, object] = {}

    for name, raw_value in matches:
        value = raw_value.strip()

        if value.startswith(("'", '"')) and value.endswith(("'", '"')):
            constants[name] = value[1:-1]
        elif value.isdigit():
            constants[name] = int(value)
        else:
            constants[name] = value

    return constants


def extract_index_defaults(relative_path: str = "index.php") -> dict[str, object]:
    content = read_project_file(relative_path)

    module_match = re.search(
        r"\$module\s*=.*?:\s*'([^']+)';",
        content,
    )
    action_match = re.search(
        r"\$action\s*=.*?:\s*'([^']+)';",
        content,
    )
    page_match = re.search(
        r"\$pageId\s*=.*?:\s*([0-9]+);",
        content,
    )

    if not module_match or not action_match or not page_match:
        raise ValueError("Failed to extract default routing values from index.php")

    return {
        "module": module_match.group(1),
        "action": action_match.group(1),
        "page": int(page_match.group(1)),
    }


def extract_action_file_pattern(relative_path: str = "index.php") -> str:
    content = read_project_file(relative_path)
    match = re.search(r'\$actionFile\s*=\s*"([^"]+)";', content)

    if not match:
        raise ValueError("Failed to extract action file pattern from index.php")

    return match.group(1)


def has_main_template_include(relative_path: str = "index.php") -> bool:
    content = read_project_file(relative_path)
    return "include 'templates/main.tpl.php';" in content
