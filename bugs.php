<?php
require 'db.php';

// Determine the sorting order and filter options
$sortOrder = isset($_GET['sort_order']) ? $_GET['sort_order'] : 'high_to_low';
$includeClosed = isset($_GET['include_closed']) && $_GET['include_closed'] == 'yes';

// Build the SQL query based on the options
$orderClause = "ORDER BY FIELD(status, 'Open', 'In Progress', 'Closed'), FIELD(severity, 'High', 'Medium', 'Low'), date_reported DESC";
if ($sortOrder == 'low_to_high') {
    $orderClause = "ORDER BY FIELD(status, 'Closed', 'In Progress', 'Open'), FIELD(severity, 'Low', 'Medium', 'High'), date_reported ASC";
}

// Fetch all bugs with filtering based on whether closed bugs should be included
if ($includeClosed) {
    $bugsQuery = "SELECT * FROM bugs $orderClause";
} else {
    $bugsQuery = "SELECT * FROM bugs WHERE status != 'Closed' $orderClause";
}
$bugs = $pdo->query($bugsQuery)->fetchAll();
?>

<!doctype html>
<html>
<head>
    <title>Bug Tracker</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Open Bugs */
        .high.open { background-color: #ff4d4d; } /* Red */
        .medium.open { background-color: #ffcc66; } /* Orange */
        .low.open { background-color: #ffff99; } /* Yellow */

        /* In Progress Bugs */
        .high.in-progress { background-color: #ff9999; } /* Light Red */
        .medium.in-progress { background-color: #ffdd99; } /* Light Orange */
        .low.in-progress { background-color: #ffffcc; } /* Light Yellow */

        /* Closed Bugs */
        .closed { background-color: #ccffcc; } /* Light Green */

        /* Text Colors */
        .high { color: #d90000; } /* Dark Red */
        .medium { color: #e69500; } /* Dark Orange */
        .low { color: #999900; } /* Dark Yellow */
        .closed { color: green; } /* Green */
    </style>
</head>
<body>
<center>
    <p><a href="../index.php">← Back to home</a></p>
    <h1>Bug Tracker</h1>

    <!-- Sorting Form -->
    <form method="get">
        <label for="sort_order">Sort by Priority:</label>
        
        <select id="sort_order" name="sort_order" onchange="this.form.submit()">
            <option value="high_to_low" <?php if(isset($_GET['sort_order']) && $_GET['sort_order'] == 'high_to_low') echo 'selected'; ?>>High to Low</option>
            <option value="low_to_high" <?php if(isset($_GET['sort_order']) && $_GET['sort_order'] == 'low_to_high') echo 'selected'; ?>>Low to High</option>
        </select>
        <label for="include_closed">Include Closed:</label>
        <input type="checkbox" id="include_closed" name="include_closed" value="yes" onchange="this.form.submit()" <?php if(isset($_GET['include_closed']) && $_GET['include_closed'] == 'yes') echo 'checked'; ?>>
    </form>

    <ul>
        <?php foreach ($bugs as $bug): ?>
            <?php if ($bug['status'] != 'Closed'): ?>
                <li class="<?php echo strtolower(htmlspecialchars($bug['severity'])); ?> <?php echo strtolower(str_replace(' ', '-', htmlspecialchars($bug['status']))); ?>">
                    <strong><?php echo htmlspecialchars($bug['description']); ?></strong><br>
                    <em class="<?php echo strtolower(htmlspecialchars($bug['severity'])); ?>">Severity: <?php echo htmlspecialchars($bug['severity']); ?></em><br>
                    <em class="<?php echo strtolower(str_replace(' ', '-', htmlspecialchars($bug['status']))); ?>">Status: <?php echo htmlspecialchars($bug['status']); ?></em><br>
                    <p><?php echo nl2br(htmlspecialchars($bug['steps_to_reproduce'])); ?></p>
                </li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>

    <?php if ($includeClosed): ?>
        <hr>
        <h2>Closed Bugs</h2>
        <ul>
            <?php foreach ($bugs as $bug): ?>
                <?php if ($bug['status'] == 'Closed'): ?>
                    <li class="closed">
                        <strong><?php echo htmlspecialchars($bug['description']); ?></strong><br>
                        <em class="<?php echo strtolower(htmlspecialchars($bug['severity'])); ?>">Severity: <?php echo htmlspecialchars($bug['severity']); ?></em><br>
                        <em class="closed">Status: <?php echo htmlspecialchars($bug['status']); ?></em><br>
                        <p><?php echo nl2br(htmlspecialchars($bug['steps_to_reproduce'])); ?></p>
                    </li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>


</center>
</body>
</html>
