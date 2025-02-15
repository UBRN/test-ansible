#!/bin/bash
set -e

echo "Running ansible syntax check and dry-run..."

# syntax check
ansible-playbook playbooks/site.yml --syntax-check

# playbook in check mode for a dry-run test
ansible-playbook playbooks/site.yml --check

echo "Tests completed successfully."
