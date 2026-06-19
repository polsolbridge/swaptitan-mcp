# SwapTitan MCP Server

> **No-KYC crypto swaps via [Model Context Protocol](https://modelcontextprotocol.io)** — let AI agents execute swaps, bridges, and privacy-routed transactions. No account, no KYC, pay-per-call via x402 USDC.

[![MCP](https://img.shields.io/badge/MCP-2024--11--05-blue)](https://modelcontextprotocol.io)
[![x402](https://img.shields.io/badge/payment-x402%20USDC-green)](https://swaptitan.net/pricing)
[![Privacy](https://img.shields.io/badge/H2H-XMR%20Routed-orange)](https://swaptitan.net/swap)

## Endpoint

```
https://swaptitan.net/mcp
```

## Why SwapTitan MCP?

1. **No-KYC Privacy Swaps (H2H)** — Send BTC, receive SOL — only **Monero** appears on-chain in the middle. No tracking, no account.
2. **3 Aggregated Providers** — ChangeNOW (1288+ assets), SimpleSwap (400+), Heleket (XMR-optimised)
3. **AI Native** — Built for Claude, GPT, and autonomous agents via MCP protocol
4. **x402 Micropayments** — Pay $0.02 per call in USDC on Base, no signup
5. **License Unlimited** — €49.99/mo Agent Tier for unlimited MCP calls

## Tools

| Tool | Description | Free Tier |
|------|-------------|-----------|
| `get_prices` | Live BTC/ETH/SOL/XMR/+13 prices | 30/day |
| `get_assets` | List 1288+ swappable assets | 30/day |
| `swap_quote` | Aggregated quote (3 providers) | 5/day |
| `swap_create` | Execute non-custodial swap | 3/day |
| `swap_status` | Poll order lifecycle | unlimited |
| `ai_chat` | Llama 3.3 70B crypto assistant | 2/day |
| `check_portfolio` | SOL/ETH/BASE/BSC balances | unlimited |
| `rug_check` | Token scam analysis | unlimited |
| `create_wallet` | Generate non-custodial wallet | unlimited |
| `set_price_alert` | Telegram price alert | unlimited |

## Quick Start

### Claude Desktop

```json
{
  "mcpServers": {
    "swaptitan": {
      "url": "https://swaptitan.net/mcp",
      "transport": "http"
    }
  }
}
```

### curl Example

```bash
# Get live prices (free)
curl -X POST https://swaptitan.net/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"tools/call","params":{"name":"get_prices","arguments":{}},"id":1}'

# Privacy swap: BTC → XMR → SOL (no-KYC)
curl -X POST https://swaptitan.net/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"tools/call","params":{"name":"swap_create","arguments":{"from":"btc","to":"sol","amount":0.01,"address":"YOUR_SOL_ADDR"}},"id":2}'
```

## Payment

| Mode | Cost | How |
|------|------|-----|
| **Free** | $0 | First 2 MCP calls/day per IP |
| **x402** | $0.02/call | `X-Payment: <txHash>` header — USDC on Base |
| **License** | €49.99/mo | `X-License-Key: <key>` — unlimited |

x402 payments verified on-chain via Base mainnet. Pay to:
```
0xA20E1D8B9aD0fb580a4c36483b1A841D2bE91E68
```

## H2H Privacy Swap

The **House-to-House (H2H)** flow routes any-to-any pair through **Monero** for blockchain-level privacy:

```
BTC → [bridge] → XMR → [bridge] → SOL
       (visible)        (visible)
              ↑
       Source/dest unlinkable
```

Use cases: Bitcoin earnings → Solana memes, ETH → BSC, USDT-on-TRON → SOL — all without an exchange account.

## Protocol

- **MCP**: 2024-11-05 (JSON-RPC 2.0 over HTTP)
- **Auth**: x402 micropayments OR License Key header
- **Transport**: HTTP POST (SSE coming)
- **Agent Card (A2A)**: https://swaptitan.net/.well-known/agent.json

## Links

- 🌐 **Website**: https://swaptitan.net
- 📚 **Developer Docs**: https://swaptitan.net/developers
- 🤖 **Agents Page**: https://swaptitan.net/agents
- 💰 **Pricing**: https://swaptitan.net/pricing
- 🔧 **CLI**: https://swaptitan.net/cli
- 📦 **Agent SDK**: https://swaptitan.net/agent-sdk.js

## License

MIT
