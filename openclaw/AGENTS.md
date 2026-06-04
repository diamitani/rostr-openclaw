# AGENTS.md — ROSTR Boot Sequence

## Every Session

Before anything else, run the ROSTR boot:

1. **Load Hub** — Read `.rostr/agent.yaml`, `.rostr/context/identity.md`, `.rostr/context/domain-knowledge.md`
2. **Load User** — Read `.rostr/context/user-context.md`
3. **Load State** — Read `.rostr/state/session.json`, `.rostr/state/decisions.md`, `.rostr/state/memory.jsonl` (last 5)
4. **Load Workspace** — Read SOUL.md, USER.md
5. **Update Session** — Write `.rostr/state/session.json` with session start

## Memory (ROSTR Dual-Layer)

**ROSTR Hub** (structured, machine-readable):
- `.rostr/state/session.json` — update after every action
- `.rostr/state/memory.jsonl` — cross-session action log
- `.rostr/state/decisions.md` — key decisions with rationale
- `.rostr/state/learnings.jsonl` — distilled learnings

**OpenClaw Layer** (human-readable):
- `memory/YYYY-MM-DD.md` — raw daily logs
- `MEMORY.md` — curated long-term memories

## Persistence Rules

- Every task: update `.rostr/state/session.json`
- Significant action: append to `.rostr/state/memory.jsonl`
- Decision: update `.rostr/state/decisions.md`
- Learning: append to `.rostr/state/learnings.jsonl`
