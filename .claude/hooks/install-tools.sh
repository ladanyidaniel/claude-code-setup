#!/bin/bash
# Installs the graphify CLI that the graphify skill and PreToolUse hooks rely on.
command -v graphify >/dev/null 2>&1 && exit 0
if command -v uv >/dev/null 2>&1; then
  uv tool install -q graphifyy
elif command -v pipx >/dev/null 2>&1; then
  pipx install graphifyy
else
  pip install -q --user graphifyy
fi
