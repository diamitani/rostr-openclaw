# ROSTR for OpenClaw

Turn any OpenClaw agent into a ROSTR-powered autonomous agent with PAL intent compilation, NPAO phase-aware orchestration, RAG DAL knowledge retrieval, and Rostr Hub persistent state.

## Architecture

```
User Input
    |
PAL (Intent Compilation) -- Extract -> Inject -> Enhance -> Compile -> Route
    |
NPAO (Phase Classification) -- PreD / Design / Development / Deployment / Debugging
    |
RAG DAL (Knowledge Retrieval) -- Tier 1 -> Tier 2 -> Tier 3 (until confidence >= 0.8)
    |
Rostr Hub (State Persistence) -- session.json -> memory.jsonl -> decisions.md -> learnings.jsonl
```

## Quickstart

```bash
# Install the skill
npx clawhub@latest install rostr-for-openclaw

# Or copy to Claude skills
cp -r skill/ ~/.claude/skills/rostr-for-openclaw/

# Create .rostr/ hub in your OpenClaw workspace
cp -r openclaw/.rostr/* ~/.openclaw/workspace/.rostr/

# Update workspace config files (see openclaw/ directory)
# Then restart your OpenClaw agent
```

## What You Get

- **PAL Layer**: Every user message compiled through a 5-stage intent pipeline before execution
- **NPAO Layer**: Tasks classified into 5D phases with 4D priority scoring
- **RAG DAL Layer**: Multi-pass retrieval with source credibility tiers
- **Rostr Hub**: Cross-session memory, decision logging, learning capture
- **`.rostr/` Hub**: Agent registry, context files, state store, knowledge config, tool manifests

## Package Structure

```
rostr-openclaw/
  skill/SKILL.md                          # Claude Code/ClawHub skill
  claude-project/                         # Claude.ai project setup
    system-instructions.md
    setup-guide.md
    knowledge/
  codex/                                  # Codex agent config
    AGENTS.md
    codex.config.yaml
    knowledge/
  openclaw/                               # OpenClaw workspace files
    SOUL.md
    AGENTS.md
    RULES.md
    ROSTR_SYSTEM_INSTRUCTIONS.md
    .rostr/                               # Reference Hub template
  standalone/                             # Platform-independent package
    rostr-agent.yaml
    system-instructions.md
    rostr-hub/                            # Full hub structure
  repo/                                   # This repository
    README.md
    LICENSE
    .gitignore
    src/
    docs/
    examples/
```

## Marketplaces

The ROSTR-for-OpenClaw skill is available on multiple marketplaces:

| Marketplace | URL | Type |
|-------------|-----|------|
| **ClawHub** (official) | `npx clawhub@latest install rostr-for-openclaw` | Free |
| **GitHub** | https://github.com/diamitani/rostr-openclaw | Open source |
| **AI Skill Market** | https://aiskill.market | Free index |
| **SkillHQ** | https://skillhq.dev | Paid (85% creator) |
| **Agent Skill Exchange** | https://agentskillexchange.com | Free |
| **AI Skill Store** | https://www.aiskillstore.io | Free/API |

See [MARKETPLACES.md](MARKETPLACES.md) for the full list of 9+ marketplaces with publish instructions.

## Quickstart

### Install the Skill
```bash
npx clawhub@latest install rostr-for-openclaw
```

### Bootstrap a Workspace
```bash
bash <(curl -s https://raw.githubusercontent.com/diamitani/rostr-openclaw/main/repo/src/rostr-bootstrap.sh)
```

### Manual Setup
```bash
cp -r skill/ ~/.claude/skills/rostr-for-openclaw/
cp -r openclaw/.rostr/* ~/.openclaw/workspace/.rostr/
```

Then update your workspace `SOUL.md`, `AGENTS.md`, and `RULES.md` with the ROSTR layer instructions (see `openclaw/` directory).

## License

MIT

---

*Built on the ROSTR Agent Framework — PAL + RAG DAL + NPAO + Rostr Hub*
