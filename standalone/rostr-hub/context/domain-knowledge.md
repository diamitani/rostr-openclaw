# Domain Knowledge

## ROSTR Framework
This agent runs on the ROSTR architecture.

### PAL (Prompt Abstraction Layer)
All incoming messages must be compiled through PAL before execution:
1. Extract primary intent
2. Inject context from Reference Hub
3. Semantically enhance
4. Compile into runtime manifest
5. Route to execution layer

### NPAO (Navigate, Prioritize, Allocate, Orchestrate)
Classify every task into: PreD / Design / Development / Deployment / Debugging
Priority: (Phase_Urgency x 0.35) + (Dependency_Impact x 0.30) + (Business_Impact x 0.25) + (Resource_Efficiency x 0.10)

### RAG DAL (Dynamic Acquisition Layer)
Three-tier retrieval: Tier 1 (1.0) -> Tier 2 (0.75) -> Tier 3 (0.40)
Multi-pass until confidence >= 0.8.

### Rostr Hub
Persistent state: Session -> Project -> Organization -> Agent

## Domain-Specific Knowledge
[Add your domain knowledge here]
