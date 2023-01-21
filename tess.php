<?php

if(isset($_POST['search']))
{
    $valueToSearch = $_POST['valueToSearch'];
    // search in all table columns
    // using concat mysql function
    $query = "SELECT * FROM `passenger` WHERE CONCAT(`PNO`, `PNAME`, `MOBILENO`, `ADDRESS`, `BUSNO`) LIKE '%".$valueToSearch."%'";
    $search_result = filterTable($query);
    
}
 else {
    $query = "SELECT * FROM `passenger`";
    $search_result = filterTable($query);
}

// function to connect and execute the query
function filterTable($query)
{
    $connect = mysqli_connect("localhost", "root", "", "dis");
    $filter_Result = mysqli_query($connect, $query);
    return $filter_Result;
}

?>

