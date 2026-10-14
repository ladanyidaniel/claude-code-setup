# claude-code-setup

Claude Code setup with:

- [ponytail](https://github.com/DietrichGebert/ponytail) plugin: `/ponytail`, `/ponytail-review`, `/ponytail-audit`, ...
- [graphify](https://github.com/Graphify-Labs/graphify) skill: `/graphify .`
- [OmniRoute](https://github.com/diegosouzapw/OmniRoute) CLI and its 45 agent skills (`cli-*`, `omni-*`, `config-codex-cli`). They need a running server: `omniroute --no-open` (port 20128).
- [Agent Skills](https://github.com/agentskills/agentskills) `skills-ref` validator: `skills-ref validate .claude/skills/<name>`

`.claude/hooks/install-tools.sh` runs on session start and installs the `graphify`, `skills-ref` and `omniroute` CLIs if they are missing.
