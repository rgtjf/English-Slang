<?php
session_start();
require_once('utils.php');

$chineseName = $_POST['chineseName'];
$englishName = $_POST['englishName'];
//$slangID = $_POST['slangID'];
$slang	 = $_POST['slang'];
$type  = $_POST['type'];

#echo $chineseName.$englishName.$slang;
if ($type == "submit") {
	$_SESSION['chineseName'] = $chineseName;
	$_SESSION['englishName'] = $englishName;
}


if ($type == "UnChecked" || $type == "submit") {
	$count = user_slang($chineseName, $englishName);
	if ($count >= 4) {
		echo "full";
	}
	else {
		echo commit($chineseName, $englishName, $slang);
	}
}else if ($type == "Checked") {
	echo commit($chineseName, $englishName, $slang);
}
?>
