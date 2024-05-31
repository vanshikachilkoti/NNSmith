<?php
require 'db.php';

// Path to your CSV file
$csvFile = 'random_bug_dataset.csv';

if (($handle = fopen($csvFile, 'r')) !== FALSE) {
    // Get the first row, which contains the column headers
    $header = fgetcsv($handle, 1000, ",");

    // Loop through the file line-by-line
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $description = $data[0]; // Adjust index based on your CSV structure
        $steps_to_reproduce = $data[1]; // Adjust index based on your CSV structure
        $severity = $data[2]; // Adjust index based on your CSV structure
        $status = $data[3]; // Adjust index based on your CSV structure

        $stmt = $pdo->prepare("INSERT INTO bugs (description, steps_to_reproduce, severity, status) VALUES (?, ?, ?, ?)");
        $stmt->execute([$description, $steps_to_reproduce, $severity, $status]);
    }
    fclose($handle);
    echo "Data imported successfully!";
} else {
    echo "Error opening the file.";
}
?>
