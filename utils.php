<?php
require_once ('MysqliDb.php');

$db = new MysqliDb ('localhost', 'root', 'root', 'EnglishSlang');


function all() {
	global $db;
	$Slang = $db->get('Slang');
	return $Slang;
}

function ischecked($slang) {
	global $db;
	$db->where('slang', $slang);
	$result = $db->get('Slang');
	//echo $result[0]['checked'];
	if ($db->count == 0) {
		//echo 'no error!';
		return False;
	}
	if ($result[0]['checked'] == 0) {
		//echo 'False';
		return False;
	}
	else {
		//echo 'True';
		return True;
	}
}

function user_slang($chineseName, $englishName) {
	global $db;
	$db->where('chineseName', $chineseName);
	$db->where('englishName', $englishName);
	$results = $db->get('Slang');
	$count = $db->count;
	return $count;
}

function check($chineseName, $englishName, $slang) {
	global $db;
	//$db->where('slang', $slang);
	$data = Array (
		'checked' => 1,
		'chineseName' => $chineseName,
		'englishName' => $englishName
	);
	$db->where('slang', $slang);
	$result = $db->update('Slang', $data);
	return result;
}

function uncheck($slang) {
	global $db;
	$data = Array (
		'checked' => 0,
		'chineseName' => '',
		'englishName' => ''
	);
	$db->where('slang', $slang);
	$result = $db->update('Slang', $data);
	return result;
}

function isself($chineseName, $englishName, $slang) {
	global $db;
	$db->where('slang', $slang);
	$result = $db->get('Slang');
	if ($db->count == 0) {
		return False;
	}
	if ($result[0]['checked'] == 0) {
		return False;
	}
	if ($result[0]['chineseName'] == $chineseName && $result[0]['englishName'] == $englishName) {
		return True;
	}
	return False;
}

function commit($chineseName, $englishName, $slang) {
	if (ischecked($slang)) {
		if (isself($chineseName, $englishName, $slang)) {
			$result = uncheck($slang);
		}
		else {
			return 'already checked';
		}			
	}else {
		$result =  check($chineseName, $englishName, $slang);
	}
	return 'update success!';
}

//uncheck('WTF');
//check('JunFeng TIAN', 'Mario', 'WTF');
//$users = $db->get('Slang');
//echo $users;
//if ($db->count > 0) {
//	foreach ($users as $user) {
//		echo $user['slang'], $user['checked'], $user['chineseName'], $user['englishName']; 
//	}
//}
//if (isself('JunFeng TIAN', 'Mario', 'WTF')) echo 'ok';
//if (!ischecked('WTFs')) echo 'false';
?>
