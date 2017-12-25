<?php
	// $filter = $_GET['filter'];
	// echo $filter;

	include('connect.php');
	error_reporting(0);
	header('Content-Type: application/json');

	$query = "SELECT * FROM tbl_language";
	$result = mysqli_query($link, $query);

	$rows = array();

	while($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	echo json_encode($rows);

// 	if(isset($_GET['project'])) { //see if there's a parameter called carModel
// 	$proj = $_GET['project'];
//
// 	$query = "SELECT project_name FROM tbl_projects";
// 	$result = mysqli_query($link, $query);
//
// 	$row = mysqli_fetch_assoc($result);
//
// 	echo json_encode($row);
// }
	// $array = [];
	// // $projQuery = "SELECT * FROM tbl_projects p, tbl_categories c, tbl_proj_cat pc WHERE p.project_id = pc.project_id AND c.category_id = pc.category_id AND c.category_name = 'Web Development'";
	// $projQuery = "SELECT project_name FROM tbl_projects";
	// $getAll = mysqli_query($link, $projQuery);
	// // echo json_encode($getAll);
	// // print_r(json_encode($getAll));
  //
  //
	// while ($resp = mysqli_fetch_assoc($getAll)){
	// 	// echo 'OEEEEEE';
	// 	// $jsonResult = json_encode($movResult);
	// 	// $grpResult .= $jsonResult.",";
	// 	$json = json_encode($resp, true);
	// 	// echo $json;
	// 	// $json = array('project' => $resp['project_name'],'client' => $resp['project_client'],'cover' => $resp['project_cover']);
	// 	array_push($array, $json);
	// 	// print_r($array);
	// }
	// print_r($array);
	// // echo $array;
	// print_r($array);

	// echo json_encode($json, true);


	// $grpjson = "";
	// echo "[";
	// while($array = mysqli_fetch_assoc($getAll)) {
	// 	// echo $array['project_name'];
	// 	$jsonResult = json_encode($array);
	// 	$grpjson .= $jsonResult.",";
	// }
	// echo substr($grpjson, 0, -1);
	// echo "]";

	//check if it was bookmarked or something like that
	// if(isset($_GET['filter'])){
	// 	$filter = $_GET['filter'];
	// 	$filterQuery = "SELECT p.project_name FROM tbl_projects p, tbl_categories c, tbl_proj_cat pc WHERE m.movies_id = mg.movies_id AND g.genre_id = mg.genre_id AND g.genre_name = '{$filter}'";
  //
	// 	echo $filterQuery;
	// } else {
	//Select all movies
	// $query = "SELECT * FROM tbl_projects p, tbl_categories c, tbl_proj_cat pc WHERE p.project_id = pc.project_id AND c.category_id = pc.category_id AND c.category_name = 'Web Development'";
  // $result = mysqli_fetch_assoc($query);
  // $jsondoc = json_encode($result);
  // echo $jsondoc;
	// $movieQuery = "SELECT movies_id, movies_cover, movies_title, movies_year FROM tbl_movies ORDER BY movies_title ASC";
	// $getMovies = mysqli_query($link, $movieQuery); //this method requires 2 parameters - first the connection, then the query.
	// }

	// $grpResult = "";
  //
	// echo "[";
	// //fetch the associative array from the query
	// while($movResult = mysqli_fetch_assoc($getMovies)) {
	// 	// echo $movResult['movies_title'];
	// 	$jsonResult = json_encode($movResult);
	// 	$grpResult .= $jsonResult.",";
	// }
	// echo substr($grpResult, 0, -1); // remove the last comma from the object
	// echo "]";

	// mysqli_close($link);

 ?>
