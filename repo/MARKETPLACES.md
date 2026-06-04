# Marketplaces — ROSTR for OpenClaw

Where to publish and distribute the ROSTR-for-OpenClaw skill.

---

## 1. ClawHub (Official OpenClaw Registry) — Free

**URL:** https://clawhub.ai  
**Format:** SKILL.md folder  
**Publish command:**
```bash
npx clawhub@latest login
npx clawhub@latest skill publish ~/.claude/skills/rostr-for-openclaw \
  --slug rostr-for-openclaw \
  --name "ROSTR for OpenClaw" \
  --version 0.1.0 \
  --tags "rostr,openclaw,framework,agent-architecture,orchestration"
```

**Install command:**
```bash
npx clawhub@latest install rostr-for-openclaw
```

**Details:** Free, public, vector search, versioned, community comments/stars.  
GitHub account must be 1+ week old to publish.

---

## 2. SkillHQ — Paid Marketplace (85% Creator Cut)

**URL:** https://skillhq.dev  
**Format:** SKILL.md  
**Publish command:**
```bash
npx skillhq@latest publish
```

**Details:** Paid marketplace. Set your price (€0–€50+). 85% creator revenue share.  
Stripe checkout. CLI: `skillhq install rostr-for-openclaw`.

---

## 3. AI Skill Market — Free Index

**URL:** https://aiskill.market  
**Format:** SKILL.md, MCP, workflows  
**Submit:** https://aiskill.market (submit form)  
**Details:** 4,000+ skills indexed. Free. Covers Claude Code, OpenClaw, MCP.  
Early publisher perks (priority placement).

---

## 4. AI Skill Store — USK Standard

**URL:** https://www.aiskillstore.io  
**Format:** Universal Skill Kit (SKILL.md)  
**Publish:** Upload via web or API  
**Details:** Agent-first. Auto-converts to 7 platforms (OpenClaw, ClaudeCode, Cursor, GeminiCLI, CodexCLI). Agent auto-discovery via MCP.

---

## 5. Agent Skill Exchange — Multi-Platform

**URL:** https://agentskillexchange.com  
**Format:** SKILL.md  
**Publish:** Via GitHub contribution  
**Details:** OpenClaw, Claude, Codex, Gemini. Industry collections.  
Trust/source-verified workflows.

---

## 6. Skills4Agents — Curated Marketplace

**URL:** https://skills4agents.com  
**Format:** SKILL.md  
**Details:** Curated. Creator-first (85% cut). Early access waitlist.

---

## 7. Skillfarm — Subscription Marketplace

**URL:** https://skillfarm.ai  
**Format:** SKILL.md (OpenClaw, Claude Code)  
**Details:** Subscription-based. Seeds economy. 85% creator cut.  
Security-focused (malware scanning).

---

## 8. skill.broker — SKILL.md Exchange

**URL:** https://skill.broker  
**Format:** SKILL.md with evidence/provenance  
**Details:** Structured skill definitions. Confidence scores. Provenance metadata.  
Credit-based purchasing.

---

## 9. SkillMarket — Solana/Crypto Marketplace

**URL:** https://www.skillmarket.space  
**Format:** OpenClaw-compatible skill module  
**Details:** $SKILL token on Solana. 70% creator revenue.  
Pay-per-invocation model. Crypto-native.

---

## Quick Reference

| Marketplace | Type | Cost | Creator Cut | CLI |
|-------------|------|------|-------------|-----|
| ClawHub | Free | Free | N/A | `clawhub` |
| SkillHQ | Paid | Free to list | 85% | `skillhq` |
| AI Skill Market | Free | Free | N/A | Web |
| AI Skill Store | Free | Free | N/A | API |
| Agent Skill Exchange | Free | Free | N/A | GitHub |
| Skills4Agents | Paid | Waitlist | 85% | Web |
| Skillfarm | Paid | Subscription | 85% | Web |
| skill.broker | Paid | Credit-based | TBD | Web |
| SkillMarket | Crypto | Solana gas | 70% | `skill-cli` |
