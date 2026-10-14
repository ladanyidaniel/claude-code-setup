# claude-code-setup

Claude Code setup with the [ponytail](https://github.com/DietrichGebert/ponytail) plugin and the [graphify](https://github.com/Graphify-Labs/graphify) skill.

- `.claude/settings.json` registers the ponytail marketplace, enables the plugin, and wires up the graphify hooks.
- `.claude/hooks/install-tools.sh` runs on session start and installs the `graphify` CLI if it is missing.

Usage in Claude Code: `/ponytail`, `/ponytail-review`, `/graphify .`
