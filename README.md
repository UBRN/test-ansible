# Test Ansible Project

## Project Structure

- ansible.cfg: Configuration file for Ansible.
- inventory/: Contains host inventory.
- playbooks/: Playbooks to run.
- roles/: Modular roles (e.g., common).
- tests/: Scripts for unit tests and debugging.

## Usage

1. Ensure you have Ansible installed.
2. Update the inventory file with your target hosts.
3. Run the playbook using the command:
   ```sh
   ansible-playbook -i inventory pingpong2.yml
   ```

## Running Tests

Execute the test script:
```
bash ./tests/test_role.sh
```

## Ansible Tower Usage

1. Define your inventories using the Ansible Tower survey.
2. Enter one or more hostnames, utilizing DNS suffix search to avoid the need for FQDN.
3. Run the playbook from Ansible Tower.

## Troubleshooting

- If the playbook fails to connect to a target server, ensure that the server is reachable and that the `wasadm` user has the necessary permissions.
- Check the Ansible Tower logs for detailed error messages.
- Verify that the DNS suffix search is correctly configured if using short hostnames.
- **Note:** Ensure that any sensitive information such as passwords or API keys are masked or removed from logs and configuration files.

## Notes

- The roles and tasks have been refactored for better performance.
- Adjust the `ansible.cfg` settings as needed.

