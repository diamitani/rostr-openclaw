# Quickstart Workflow

This example shows how the ROSTR layers process a real user request.

## User Input
"check my email and see if any urgent messages from clients came in"

## Step 1: PAL Compilation
```json
{
  "intent": "check email for urgent client messages",
  "domain": "ops",
  "subject": "email inbox",
  "constraints": ["urgent only", "client senders"],
  "phase": "PreD -> Development",
  "priority_score": 6.5
}
```

## Step 2: NPAO Classification
- Phase: Development (known task, no PreD/Design needed)
- Priority: 6.5 (queued — important but not production-critical)

## Step 3: RAG DAL (if needed)
- If agent doesn't have native email access, search for email API docs
- Tier 1 search: official Gmail/Outlook API docs
- Confidence check: >= 0.8

## Step 4: Execution
- Read inbox
- Filter for client senders
- Flag urgent messages

## Step 5: State Persistence
- `session.json`: updated with action
- `memory.jsonl`: "Checked email at YYYY-MM-DDTHH:MM:SSZ, found 2 urgent client messages"
