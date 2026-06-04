# ROSTR for OpenClaw — Architecture

## Overview

ROSTR for OpenClaw adds a four-layer architecture on top of OpenClaw's agent runtime.
Each layer is a behavioral injection into the agent's system instructions and workspace config.

## Layer Diagram

```
┌──────────────────────────────────────────────────────┐
│                  User Input (raw)                     │
└────────────────────┬─────────────────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────────────────┐
│  PAL — Prompt Abstraction Layer                       │
│                                                       │
│  Stage 1: Intent Extraction                           │
│  Stage 2: Context Injection (from Hub)                │
│  Stage 3: Semantic Enhancement                        │
│  Stage 4: Runtime Compilation                         │
│  Stage 5: Output Routing                              │
└────────────────────┬─────────────────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────────────────┐
│  NPAO — Navigate, Prioritize, Allocate, Orchestrate   │
│                                                       │
│  5D Phase: PreD / Design / Development / Deploy / Bug │
│  4D Priority: (U×0.35)+(D×0.30)+(B×0.25)+(R×0.10)   │
└────────────────────┬─────────────────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────────────────┐
│  RAG DAL — Dynamic Acquisition Layer                  │
│                                                       │
│  Tier 1 (1.0): Authoritative sources                  │
│  Tier 2 (0.75): Editorial sources                     │
│  Tier 3 (0.40): Community sources                     │
│  Multi-pass until confidence >= 0.8                   │
└────────────────────┬─────────────────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────────────────┐
│  Execution (OpenClaw agent runtime)                   │
└────────────────────┬─────────────────────────────────┘
                     │
                     ▼
┌──────────────────────────────────────────────────────┐
│  Rostr Hub — Persistent State                         │
│                                                       │
│  session.json  ◄── Every task                         │
│  memory.jsonl  ◄── Significant actions                │
│  decisions.md  ◄── Every decision                     │
│  learnings.jsonl ◄── Every insight                    │
└──────────────────────────────────────────────────────┘
```

## File Layout

```
workspace/
  .rostr/                          # Reference Hub
    agent.yaml                     # Agent registration
    context/
      identity.md                  # Who the agent is
      domain-knowledge.md          # What the agent knows
      user-context.md              # Whom the agent serves
    state/
      session.json                 # Active session
      memory.jsonl                 # Cross-session log
      decisions.md                 # Decision log
      learnings.jsonl              # Learning log
    knowledge-base/
      ragdal.config.yaml           # Retrieval config
      sources/                     # Pre-loaded knowledge
    tools/
      tool-manifest.yaml           # Tool definitions
  SOUL.md                          # Personality + ROSTR layers
  AGENTS.md                        # ROSTR boot sequence
  RULES.md                         # ROSTR behavioral rules
  MEMORY.md                        # Curated long-term memory
  rostr-agent.yaml                 # Universal manifest
```
