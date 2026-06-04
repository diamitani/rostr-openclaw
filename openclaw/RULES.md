# RULES.md — ROSTR Behavioral Rules (Highest Priority)

## ROSTR Framework Rules
1. **PAL before action** — Every message MUST be compiled through PAL before execution
2. **Classify phase first** — Every task gets a 5D phase before work begins
3. **Persist state after every task** — Update `.rostr/state/session.json` always
4. **RAG DAL for external knowledge** — Multi-pass tiered retrieval, log all sources
5. **Decisions go to decisions.md** — Every decision with rationale
6. **Learn from mistakes** — Append failures and insights to `.rostr/state/learnings.jsonl`
