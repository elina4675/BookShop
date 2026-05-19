import unittest

from bookshop_ci import (
    extract_action_file_pattern,
    extract_index_defaults,
    has_main_template_include,
    parse_php_constants,
)


class BookShopProjectTests(unittest.TestCase):
    def test_config_uses_expected_bookshop_database_settings(self) -> None:
        constants = parse_php_constants()

        self.assertEqual(constants["DB_NAME"], "BookShop")
        self.assertEqual(constants["DB_SERVER"], "127.0.0.1:3307")
        self.assertEqual(constants["NUMBER_OF_ROWS_IN_PAGE"], 10)

    def test_index_uses_expected_default_route_values(self) -> None:
        defaults = extract_index_defaults()

        self.assertEqual(defaults["module"], "home")
        self.assertEqual(defaults["action"], "view")
        self.assertEqual(defaults["page"], 1)

    def test_index_builds_controller_path_and_loads_main_template(self) -> None:
        action_file_pattern = extract_action_file_pattern()

        self.assertEqual(action_file_pattern, "controls/{$module}/{$module}_{$action}.php")
        self.assertTrue(has_main_template_include())


if __name__ == "__main__":
    unittest.main()
