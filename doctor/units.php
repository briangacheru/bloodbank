<?php

header('Content-Type: application/json');

include_once 'db.php';

$query = sprintf("SELECT bloodgroup, units FROM bloodunits ORDER BY id");

$result = $MySQLi_CON->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

$result->close();

$MySQLi_CON->close();

print json_encode($data);

?>