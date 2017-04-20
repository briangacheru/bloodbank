<?php
include_once 'db.php';
$id = $_POST['id'];
$st = $_POST['st'];
$chk = $_POST['chk'];
$chkcount = count($id);
for($i=0; $i<$chkcount; $i++)
{
	$MySQLi_CON->query("UPDATE requests SET status='$st[$i]' WHERE id=".$id[$i]);
}
header("Location: viewrequests.php");
?>