<?php require_once 'dbconfig.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content = "width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

 <!-- FETCH_ALL() -->
    <?php
    $stmt = $pdo -> prepare("SELECT * FROM customers");

    if ($stmt -> execute()) {
        echo "<pre>";
        print_r($stmt -> fetchAll());
        echo "<pre>";
    }
    ?> 

   <!-- HOW FETCH() IS USED -->
   <?php
    $stmt = $pdo -> prepare("SELECT * FROM customers");

    if ($stmt -> execute()) {
        echo "<pre>";
        print_r($stmt -> fetch());
        echo "<pre>";
    }
    ?>

<!-- INSERTION OF RECORD -->
    <?php
    $query = "INSERT INTO customers (customer_id, first_name, last_name, date_of_registry) VALUES (?,?,?,?,?)";
    
    $stmt = $pdo -> prepare($query);
    $executeQuery = $stmt -> execute(
        [976-827, 'Creighton', 'Giacomello', '29-06-2022']);

        if ($executeQuery) {
            echo "Query successful!";
        }else {
            echo "Query failed!";
        }
    ?> 

   <!-- DELETION OF RECORD -->
    <?php
    $query = "DELETE FROM members WHERE id = 6";
    $stmt = $pdo -> prepare($query);

    $executeQuery = $stmt -> execute();

     if ($executeQuery) {
            echo "Deletion Successful!";
        }else {
            echo "Query failed!";
        }
    ?> 

<!-- UPDATING OF RECORD -->
    <?php
        $query = "UPDATE customers 
                SET name = ?
                WHERE customer_id = 976-827
                ";

        $stmt = $pdo->prepare($query);

        $executeQuery = $stmt->execute(
            ["Diwata Pares"]
        );

        if ($executeQuery) {
            echo "Update successful!";
        }
        else {
            echo "Query failed";
        }
    ?>

<!-- SQL QUERY RESULT RENDERED ON HTML TABLE -->
    <?php
            $query = "SELECT first_name, date_of_registry FROM customers";

        $stmt = $pdo->prepare($query);
        $executeQuery = $stmt->execute();

        if ($executeQuery) {
            $members = $stmt->fetchAll();
        }

        else {
            echo "Query failed";
        }
    ?>

    	<table>
		<tr>
			<th>Name</th>
			<th>Date of Registry</th>
		</tr>
		<?php foreach ($members as $row) { ?>
		<tr>
			<td><?php echo $row['first_name']; ?></td>
			<td><?php echo $row['date_of_registry']; ?></td>
		</tr>
		<?php } ?>
	</table> 
</body>
</html>
