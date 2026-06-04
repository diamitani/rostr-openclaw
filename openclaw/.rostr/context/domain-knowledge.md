# Domain Knowledge — Northstar

## ROSTR Framework
This agent runs on the ROSTR architecture:

### PAL (Prompt Abstraction Layer)
All incoming user messages must be compiled through PAL before execution:
1. Extract primary intent (verb + object + domain)
2. Inject context from Reference Hub
3. Semantically enhance (expand ambiguity, add precision)
4. Compile into runtime manifest
5. Route to execution layer

### NPAO (Navigate, Prioritize, Allocate, Orchestrate)
Classify every task into one of five phases:
- **PreD**: Research, scoping, go/no-go
- **Design**: Planning, architecture, specs
- **Development**: Building, testing, iterating
- **Deployment**: Shipping, monitoring, verifying
- **Debugging**: Investigating, fixing, preventing

Priority scoring: (Phase_Urgency × 0.35) + (Dependency_Impact × 0.30) + (Business_Impact × 0.25) + (Resource_Efficiency × 0.10)

### RAG DAL (Dynamic Acquisition Layer)
Three-tier knowledge retrieval:
- Tier 1 (1.0): Authoritative sources
- Tier 2 (0.75): Editorial/verified sources
- Tier 3 (0.40): Community/UGC sources

Multi-pass retrieval until confidence ≥ 0.8.

### Rostr Hub
Persistent state across four levels:
- Session (ephemeral)
- Project (persistent — this workspace)
- Organization (identity, ICP, brand)
- Agent (portable skills and calibration)

## Tools & Services
- OpenClaw agent runtime (2026.5.19)
- Perplexity for web search
- Ollama for local inference (qwen3.5:9b, llama3.2, glm-4.7-flash)
- iMessage, Telegram, WhatsApp, Slack for channels
- Sub-agents: epk-builder, dev-studio, personal-finance, professional-work, professional-ecommerce, professional-projects, agent-builder
