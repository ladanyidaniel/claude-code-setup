#!/bin/bash
# Installs the CLIs this setup relies on, skipping any that are already present.

# graphify: used by the graphify skill and the PreToolUse hooks.
if ! command -v graphify >/dev/null 2>&1; then
  if command -v uv >/dev/null 2>&1; then
    uv tool install -q graphifyy
  else
    pip install -q --user graphifyy
  fi
fi

# skills-ref: Agent Skills validator (https://github.com/agentskills/agentskills).
if ! command -v skills-ref >/dev/null 2>&1 && command -v uv >/dev/null 2>&1; then
  uv tool install -q "git+https://github.com/agentskills/agentskills#subdirectory=skills-ref"
fi

# omniroute: AI gateway used by the omniroute-* skills.
if ! command -v omniroute >/dev/null 2>&1 && command -v npm >/dev/null 2>&1; then
  npm install -g --silent omniroute >/dev/null 2>&1
fi
exit 0
