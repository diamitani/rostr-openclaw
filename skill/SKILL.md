---
name: rostr-for-openclaw
description: >
  ROSTR Framework for OpenClaw — adds PAL intent compilation, NPAO phase-aware
  orchestration, RAG DAL knowledge retrieval, and Rostr Hub persistent state to any
  OpenClaw agent. Install this skill to make every OpenClaw agent a ROSTR-compliant,
  production-grade autonomous agent with cross-session knowledge compounding.
---

# ROSTR for OpenClaw

Turn any OpenClaw agent into a ROSTR-powered autonomous agent. This skill injects the
four-layer ROSTR architecture (PAL + RAG DAL + NPAO + Rostr Hub) into your OpenClaw
workspace, giving every agent instance structured intent compilation, phase-aware task
orchestration, multi-pass knowledge retrieval, and persistent state across sessions.

---

## What This Skill Does

When loaded by an OpenClaw agent:

1. **PAL Compilation** — every user message flows through a 5-stage intent pipeline
2. **NPAO Phase Awareness** — tasks classified into 5D phases with priority scoring
3. **RAG DAL Retrieval** — multi-pass search with source credibility tiers
4. **Rostr Hub Persistence** — cross-session memory, decision logging, learning capture
5. **`.rostr/` Reference Hub** — agent registry, context, state, knowledge, tools

---

## Architecture

```
User Input -> PAL (Compile Intent) -> NPAO (Classify Phase) -> RAG DAL (Retrieve Knowledge) -> Execute -> Rostr Hub (Persist State) -> Output + Compounded Knowledge
```

### The Four Layers

**PAL (Prompt Abstraction Layer):** 5-stage pipeline — Extract intent, Inject hub context,
Enhance semantics, Compile runtime manifest, Route to execution. Never act on raw input.

**NPAO (Navigate, Prioritize, Allocate, Orchestrate):** 5D phases (PreD, Design,
Development, Deployment, Debugging) with 4D priority scoring (Urgency x 0.35,
Dependency x 0.30, Business x 0.25, Efficiency x 0.10).

**RAG DAL (Dynamic Acquisition Layer):** Three-tier source credibility (1.0/0.75/0.40)
with multi-pass retrieval until confidence >= 0.8.

**Rostr Hub:** Persistent state across 4 levels — Session (ephemeral), Project (file-based),
Organization (identity/brand), Agent (portable skills).

---

## Installation

```bash
npx clawhub@latest install rostr-for-openclaw
```

Or copy to Claude skills:
```bash
cp -r rostr-openclaw/skill/ ~/.claude/skills/rostr-for-openclaw/
```

### What Gets Installed

```
workspace/
  .rostr/                    # Reference Hub
    agent.yaml               # Agent registration
    context/                 # Identity, domain, user context
    state/                   # Session, memory, decisions, learnings
    knowledge-base/          # RAG DAL config + sources
    tools/                   # Tool manifest
  rostr-agent.yaml           # Universal agent manifest
```

### Workspace Files Updated
- `SOUL.md` — PAL + NPAO + RAG DAL layer instructions added
- `AGENTS.md` — ROSTR boot sequence added
- `RULES.md` — ROSTR behavioral rules added
- `MEMORY.md` — ROSTR state persistence instructions

---

## Quickstart

```bash
# 1. Install skill
npx clawhub@latest install rostr-for-openclaw

# 2. Create .rostr/ hub in your workspace
mkdir -p .rostr/{context,state,knowledge-base/sources,tools}

# 3. Copy ROSTR config files
cp -r path/to/rostr-openclaw/openclaw/.rostr/* .rostr/

# 4. Update AGENTS.md with ROSTR boot sequence
# 5. Update SOUL.md with layer instructions
# 6. Update RULES.md with ROSTR rules
# 7. Restart OpenClaw agent
```

---

## Example: PAL Compilation

User says: "fix login bug on staging"

PAL produces: `{intent: "fix bug", domain: "debugging", phase: "Debugging", priority: 8.5}`

NPAO classifies: Phase = Debugging (production-level), Priority = 8.5 (immediate)

Agent proceeds with: reproduce -> root cause -> fix -> prevent

---

## License

MIT

---

*Built on the ROSTR Agent Framework — PAL + RAG DAL + NPAO + Rostr Hub*
