#!/usr/bin/env bash
# ROSTR Bootstrap for OpenClaw — creates .rostr/ hub in any OpenClaw workspace
set -euo pipefail

WORKSPACE="${1:-$PWD}"

echo "Bootstrapping ROSTR hub in: $WORKSPACE"

# Create directory structure
mkdir -p "$WORKSPACE/.rostr"/{context,state,knowledge-base/sources,tools,scripts}

# Create agent registration
cat > "$WORKSPACE/.rostr/agent.yaml" << 'EOF'
rostr_version: "1.0"
agent:
  id: "agent"
  name: "Agent"
  description: "ROSTR-enabled OpenClaw agent"
  version: "0.1.0"
  license: "MIT"
framework:
  pal: true
  ragdal: true
  npao: true
  hub: true
capabilities:
  - intent_compilation
  - phase_classification
  - state_persistence
  - decision_logging
EOF

# Create session state
echo '{"session_id":"init","started_at":"","active_tasks":[],"context":{"agent":"","phase":"PreD","last_intent":null}}' > "$WORKSPACE/.rostr/state/session.json"

# Create empty state files
echo "# Key Decisions" > "$WORKSPACE/.rostr/state/decisions.md"
echo "" > "$WORKSPACE/.rostr/state/memory.jsonl"
echo "" > "$WORKSPACE/.rostr/state/learnings.jsonl"

# Create RAG DAL config
cat > "$WORKSPACE/.rostr/knowledge-base/ragdal.config.yaml" << 'EOF'
ragdal:
  enabled: true
  mode: general_knowledge
  source_tiers:
    tier_1:
      - primary documentation
      - official APIs
    tier_2:
      - industry publications
      - verified news
    tier_3:
      - community forums
      - Stack Overflow
  confidence_threshold: 8
  max_passes: 3
  cache_ttl_hours: 72
EOF

echo "ROSTR hub bootstrapped successfully."
echo ""
echo "Next steps:"
echo "  1. Edit .rostr/context/identity.md with your agent's identity"
echo "  2. Edit .rostr/context/user-context.md with your user context"
echo "  3. Edit .rostr/context/domain-knowledge.md with your domain knowledge"
echo "  4. Update SOUL.md, AGENTS.md, RULES.md with ROSTR layers"
echo "  5. Restart your OpenClaw agent session"
