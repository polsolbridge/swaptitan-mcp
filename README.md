# SwapTitan MCP Server

> No-KYC crypto swap via **Model Context Protocol** (MCP). Let AI agents execute swaps, check prices, and manage crypto — no KYC, no account required.

[![MCP](https://img.shields.io/badge/MCP-2024--11--05-blue)](https://modelcontextprotocol.io)
[![x402](https://img.shields.io/badge/payment-x402%20USDC-green)](https://swaptitan.net/pricing)

## Endpoint

```
https://swaptitan.net/mcp
```

## Tools

| Tool | Description |
|------|-------------|
| `get_prices` | Live BTC/ETH/SOL/XMR prices |
| `get_assets` | List 1288+ swappable assets |
| `swap_quote` | Get swap quote (from/to/amount) |
| `swap_create` | Execute a swap order |
| `swap_status` | Check order status |
| `ai_chat` | AI crypto assistant (Llama 3.1) |
| `check_portfolio` | Check wallet balances (SOL/ETH/BSC) |
| `rug_check` | Solana token rug-pull analysis |
| `set_price_alert` | Set Telegram price alert |
| `create_wallet` | Generate new Solana wallet |

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

### curl
```bash
# Initialize session
curl -X POST https://swaptitan.net/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"initialize","params":{"protocolVersion":"2024-11-05","clientInfo":{"name":"test","version":"1.0"}},"id":1}'

# Get prices
curl -X POST https://swaptitan.net/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"tools/call","params":{"name":"get_prices","arguments":{}},"id":2}'

# Swap quote: 0.1 BTC → XMR
curl -X POST https://swaptitan.net/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"tools/call","params":{"name":"swap_quote","arguments":{"from":"BTC","to":"XMR","amount":"0.1"}},"id":3}'
```

### JavaScript SDK
```javascript
import TerafabSDK from 'https://swaptitan.net/agent-sdk.js';
const agent = new TerafabSDK();
const session = await agent.mcp();
await session.initialize();
const tools = await session.listTools();
const prices = await session.call('get_prices', {});
console.log(prices);
```

## Payment

- **Free**: 5 swap calls/day, 5 AI calls/day per IP
- **x402**: Pay $0.05 USDC (Base) per swap call — automatic, no account
- **License**: €4.99–€29.99/month for higher limits

## Protocol

- **Version**: MCP 2024-11-05
- **Transport**: HTTP (SSE coming soon)
- **Auth**: x402 micropayments or License Key header

## Links

- **Website**: https://swaptitan.net
- **API Docs**: https://swaptitan.net/developers
- **CLI**: https://swaptitan.net/cli
- **Agent SDK**: https://swaptitan.net/agent-sdk.js
- **Agent Card (A2A)**: https://swaptitan.net/.well-known/agent.json
