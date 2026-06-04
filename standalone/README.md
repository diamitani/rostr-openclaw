# ROSTR Standalone Agent Package

This is a platform-independent ROSTR agent package. It can be deployed to any agent runtime
(OpenClaw, Claude Code, Codex, or custom) with minimal adaptation.

## Contents

- `rostr-agent.yaml` — Universal agent manifest
- `system-instructions.md` — Complete system prompt (8 sections)
- `rostr-hub/` — Full Reference Hub structure (copy to workspace/.rostr/)

## Deployment

1. Copy `rostr-hub/` to your agent workspace as `.rostr/`
2. Set your system instructions to `system-instructions.md`
3. Register the agent using `rostr-agent.yaml`
4. Start your agent session
