<?php

//fetch_data.php

include('database_connection.php');

if(isset($_POST["action"]))
{
	$sql = "SELECT * FROM scholarship WHERE s_status = '1'
	";
	// if(isset($_POST["minimum_price"], $_POST["maximum_price"]) && !empty($_POST["minimum_price"]) && !empty($_POST["maximum_price"]))
	// {
	// 	$query .= "
	// 	 AND product_price BETWEEN '".$_POST["minimum_price"]."' AND '".$_POST["maximum_price"]."'
	// 	";
	// }
	if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$sql .= "AND s_type IN('".$brand_filter."')
		";
	}
	if(isset($_POST["ram"]))
	{
		$ram_filter = implode("','", $_POST["ram"]);
		$sql .= "AND s_field IN('".$ram_filter."')
		";
	}
	if(isset($_POST["storage"]))
	{
		$storage_filter = implode("','", $_POST["storage"]);
		$sql .= "AND s_merit IN('".$storage_filter."')
		";
	}

	
	$result = mysqli_query($conn, $sql);
	$total_row = mysqli_num_rows($result);
	$output = '';
	if($total_row > 0)
	{
		foreach($result as $row)
		{
			$output .= '
			<div class="col-sm-5 col-lg-5 col-md-7">
				<div style="border:3px flex #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:300px;">
					
					<p align="left"><strong><a href="#">'. $row['s_name'] .'</a></strong></p>
					<h4 style="text-align:left;" class="text-danger" >'. $row['s_type'] .'</h4>
					<p>Field : '. $row['s_field'].' <br />
					Minimum Qualification : '. $row['s_merit'] .' <br />
					Scholarship Details: '. $row['s_det'] .' <br />
					 </p>
					 <h5><a href=" " class="btn btn-success btn-large ">Apply Scholarship</a></h5>
				</div>

			</div>
			';
		}
	}
	else
	{
		$output = '<h3>No Data Found</h3>';
	}
	echo $output;
}

?>