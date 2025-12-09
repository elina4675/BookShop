<?php
// запуск сесії
session_start();

// 1) ІНІЦІАЛІЗУЄМО МАСИВ ДЛЯ ЛОГУВАННЯ ЗАПИТІВ
if (!isset($_SESSION['queries']) || !is_array($_SESSION['queries'])) {
    $_SESSION['queries'] = array();
}

// 2) КОНФІГ ТА УТИЛІТИ
include 'config.php';
include 'utils/common.class.php';
require_once 'utils/mysql.class.php';
include 'utils/validator.class.php';
include 'utils/paging.class.php';

// 3) КЛАСИ З БІБЛІОТЕК
include 'libraries/books.class.php';
include 'libraries/authors.class.php';
include 'libraries/reviews.class.php';
// за потреби пізніше можна додати ще інші:
// include 'libraries/carts.class.php';
// include 'libraries/orders.class.php';
// ...

// 4) ЯКИЙ МОДУЛЬ І ДІЯ (за замовчуванням – головна сторінка)
$module = isset($_GET['module']) ? mysql::escapeFieldForSQL($_GET['module']) : 'home';
$action = isset($_GET['action']) ? mysql::escapeFieldForSQL($_GET['action']) : 'view';

// 5) ПАРАМЕТРИ
$id = isset($_GET['id']) ? mysql::escapeFieldForSQL($_GET['id']) : '';
$pageId = isset($_GET['page']) ? mysql::escapeFieldForSQL($_GET['page']) : 1;

// 6) ЯКИЙ КОНТРОЛЕР ПІДКЛЮЧАТИ
$actionFile = "controls/{$module}/{$module}_{$action}.php";

// 7) ПІДКЛЮЧАЄМО ГОЛОВНИЙ ШАБЛОН
include 'templates/main.tpl.php';

// 8) (опційно) можна залогувати запити в консоль браузера
// if (!empty($_SESSION['queries'])) {
//     common::logToConsole($_SESSION['queries']);
// }

// 9) ОЧИЩАЄМО СПИСОК ЗАПИТІВ
$_SESSION['queries'] = array();
