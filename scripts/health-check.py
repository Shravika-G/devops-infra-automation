import subprocess
import json

RESOURCE_GROUP = "rg-devops-automation"
STORAGE_ACCOUNT = "shrdevopsauto20260927"

command = [
    "az",
    "storage",
    "account",
    "show",
    "--name",
    STORAGE_ACCOUNT,
    "--resource-group",
    RESOURCE_GROUP,
    "--output",
    "json",
]

result = subprocess.run(command, capture_output=True, text=True)

if result.returncode != 0:
    print("Health check failed: Storage Account not found.")
    print(result.stderr)
    raise SystemExit(1)

data = json.loads(result.stdout)

print("Health check passed.")
print(f"Storage Account: {data['name']}")
print(f"Location: {data['location']}")
print("Status: Resource exists in Azure.")
