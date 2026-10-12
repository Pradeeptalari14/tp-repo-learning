#!/usr/bin/env bash
set -euo pipefail

echo "======================================================================"
echo "  Validating Unified Repository Learning Workspace (v2.0.0)"
echo "======================================================================"

echo "==> Step 1: Checking required files..."
test -f main.py
test -f docker-compose.yml
test -f Dockerfile
test -f docs/repo_learning_flow.png
echo "    All required repository files present."

echo "==> Step 2: Validating Python syntax..."
python3 -m py_compile main.py
echo "    Python code syntax clean."

echo "==> Step 3: Executing workspace pipeline test..."
python3 main.py

echo "======================================================================"
echo "  REPOSITORY LEARNING WORKSPACE VALIDATION PASSED!"
echo "======================================================================"
