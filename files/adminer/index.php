<?php

if ( ! in_array( $_SERVER['SERVER_NAME'], ['localhost','127.0.0.1'] ) ) {
	http_response_code(400);
	echo '<meta name="robots" content="noindex, nofollow" />';
	echo '<h1>For security, your Adminer is only available in your localhost. Also, is highly recommended that you delete the adminer folder when in production.</h1>';
	die;
}

function adminer_object() {
	class AdminerSQLitePasswordLess extends Adminer\Adminer {
		function permanentLogin($create = false) {
			return md5(date('Y-m-d')); // key used for permanent login
		}

		function login($login, $password) {
			return true;
		}
	}

	return new AdminerSQLitePasswordLess();
}

if (empty($_SERVER['QUERY_STRING']) || empty($_COOKIE['adminer_permanent'])) {
	$_POST['auth'] = [
		'driver'    => 'sqlite',
		'username'  => '',
		'password'  => '',
		'db'        => dirname( __DIR__ ) . '/wp-content/database/.ht.sqlite',
		'permanent' => 1,
	];
}

include __DIR__ . "/adminer-editor.php";
