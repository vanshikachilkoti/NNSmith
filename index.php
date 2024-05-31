<?php
require 'db.php';

// Handle bug submission
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit_bug'])) {
    $description = $_POST['description'];
    $steps_to_reproduce = $_POST['steps_to_reproduce'];
    $severity = $_POST['severity'];
    $status = $_POST['status'];
    $date_reported = date('Y-m-d H:i:s');

    $stmt = $pdo->prepare("INSERT INTO bugs (description, steps_to_reproduce, severity, status) VALUES (?, ?, ?, ?)");
    $stmt->execute([$description, $steps_to_reproduce, $severity, $status]);

    header("Location: index.php");
    exit;
}

// Handle search and filter
$search_id = $_GET['search_id'] ?? '';
$filter_severity = $_GET['filter_severity'] ?? '';
$filter_status = $_GET['filter_status'] ?? '';

$query = "SELECT * FROM bugs WHERE 1=1";
$params = [];

// Append condition for search by ID
if ($search_id !== '') {
    $query .= " AND id = :search_id";
    $params[':search_id'] = $search_id;
}

// Append conditions for filter
if ($filter_severity) {
    $query .= " AND severity = :filter_severity";
    $params[':filter_severity'] = $filter_severity;
}
if ($filter_status) {
    $query .= " AND status = :filter_status";
    $params[':filter_status'] = $filter_status;
}
$query .= " ORDER BY date_reported DESC";

$stmt = $pdo->prepare($query);

// Bind parameters and execute the query
foreach ($params as $key => $value) {
    $stmt->bindValue($key, $value);
}

$stmt->execute(); // Execute the query
$bugs = $stmt->fetchAll();
?>

<!doctype html>
<html>
<head>
    <title>Bug Tracker</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<center>
    <h1>Bug Tracker</h1>

    <!-- Search Form -->
    <form method="get" action="index.php">
        <input type="text" name="search_id" placeholder="Search by ID" value="<?php echo htmlspecialchars($search_id); ?>">
        <input type="submit" value="Search">
    </form>

    <!-- Filter Form -->
    <form method="get" action="index.php">
        <select name="filter_severity">
            <option value="">All Severities</option>
            <option value="Low" <?php if ($filter_severity == 'Low') echo 'selected'; ?>>Low</option>
            <option value="Medium" <?php if ($filter_severity == 'Medium') echo 'selected'; ?>>Medium</option>
            <option value="High" <?php if ($filter_severity == 'High') echo 'selected'; ?>>High</option>
        </select>
        <select name="filter_status">
            <option value="">All Statuses</option>
            <option value="Open" <?php if ($filter_status == 'Open') echo 'selected'; ?>>Open</option>
            <option value="In Progress" <?php if ($filter_status == 'In Progress') echo 'selected'; ?>>In Progress</option>
            <option value="Closed" <?php if ($filter_status == 'Closed') echo 'selected'; ?>>Closed</option>
        </select>
        <input type="submit" value="Filter">
    </form>
<a href="bugs.php">View All</a>
    <!-- Display Bugs Based on Search/Filter -->
    <?php if (!empty($search_id) || !empty($filter_severity) || !empty($filter_status)): ?>
        <ul>
            <?php foreach ($bugs as $bug): ?>
                <li>
                    <strong><?php echo htmlspecialchars($bug['description']); ?></strong><br>
                    <em>Severity: <?php echo htmlspecialchars($bug['severity']); ?></em><br>
                    <em>Status: <?php echo htmlspecialchars($bug['status']); ?></em><br>
                    <p><?php echo nl2br(htmlspecialchars($bug['steps_to_reproduce'])); ?></p>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>

    <h2>Report a new bug</h2>
    <form method="post" action="index.php">
        <label for="description">Description</label>
        <textarea id="description" name="description" required></textarea>
        <br>
        <label for="steps_to_reproduce">Steps to Reproduce</label>
        <textarea id="steps_to_reproduce" name="steps_to_reproduce" required></textarea>
        <br>
        <label for="severity">Severity</label>
        <select id="severity" name="severity" required>
            <option value="Low">Low</option>
            <option value="Medium">Medium</option>
            <option value="High">High</option>
        </select>
        <br>
        <label for="status">Status</label>
        <select id="status" name="status" required>
            <option value="Open">Open</option>
            <option value="In Progress">In Progress</option>
            <option value="Closed">Closed</option>
        </select>
        <br>
        <input type="submit" name="submit_bug" value="Submit">
    </form>
</center>
</body>
</html>
