<?php

	include('connect.php');
	error_reporting(0);
	header('Content-Type: application/json');


if(isset($_GET['projects'])) {
	$query = "SELECT project_id, project_name, project_thumb FROM tbl_projects";
	$result = mysqli_query($link, $query);

	$rows = array();

	while($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	echo json_encode($rows);
}

// if(isset($_GET['proj'])) {
// 	$catch = $_GET['proj'];
// 	$query = "SELECT * FROM tbl_projects WHERE project_id=".$catch;
// 	$result = mysqli_query($link, $query);
//
// 	$row = mysqli_fetch_assoc($result);
//
// 	echo json_encode($row);
// }

if(isset($_GET['language'])) {
		$query = "SELECT * FROM tbl_language";
		$result = mysqli_query($link, $query);

		$rows = array();

		while($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
		echo json_encode($rows);
	}

	if(isset($_GET['steps'])) {
			$newquery = "SELECT * FROM tbl_steps";
			$newresult = mysqli_query($link, $newquery);

			$rows = array();

			while($row = mysqli_fetch_assoc($newresult)) {
				$rows[] = $row;
			}
			echo json_encode($rows);
		}

		if(isset($_GET['filter'])) {
			$filter = $_GET['filter'];
			if($filter == 0){
				$query = "SELECT project_id, project_name, project_thumb FROM tbl_projects";
			} else {
				$query = "SELECT pro.project_id, cat.category_id, pro.project_name, pro.project_thumb FROM tbl_projects pro, tbl_categories cat, tbl_proj_cat pc WHERE pro.project_id = pc.project_id AND cat.category_id = pc.category_id AND cat.category_id=".$filter;
			}
			$result = mysqli_query($link, $query);

			$rows = array();

			while($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
			echo json_encode($rows);
		}

	mysqli_close($link);

 ?>
