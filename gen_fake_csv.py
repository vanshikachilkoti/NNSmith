import csv
import random
from faker import Faker

fake = Faker()

# Define sample data
severities = ['Low', 'Medium', 'High']
statuses = ['Open', 'In Progress', 'Closed']

# Generate random dataset
num_records = 50  # Adjust this number for more or fewer records
dataset = []

# Sample source code snippets for better context
source_code_snippets = [
    "import torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)",
    "import torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)",
    "import torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)",
    "import torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)",
    "import torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)"
]

for _ in range(num_records):
    description = fake.sentence(nb_words=10)
    source_code = random.choice(source_code_snippets)
    steps_to_reproduce = f"1. Run the following PyTorch code:\n{source_code}\n2. Observe the output."
    severity = random.choice(severities)
    status = random.choice(statuses)
    dataset.append([description, steps_to_reproduce, severity, status])

# Write to CSV
with open('random_bug_dataset.csv', mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['description', 'steps_to_reproduce', 'severity', 'status'])  # Header
    writer.writerows(dataset)

print("Random PyTorch bug dataset generated successfully!")
