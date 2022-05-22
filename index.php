<?php
session_start();

    if (isset($_GET["showallerrors"])||isset($_POST["showallerrors"])){
        ini_set('error_reporting', E_ALL & ~E_NOTICE);
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
    }

include_once("inc/class-core.php");
include_once("inc/baseModel.php");
include_once("inc/navbar.php");
include_once("inc/users.php");
include_once("inc/content.php");
include_once("inc/cells.php");

new core;