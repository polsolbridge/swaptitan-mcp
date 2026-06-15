FROM node:20-alpine
WORKDIR /app
ENV SWAPTITAN_MCP_URL=https://swaptitan.net/mcp
# mcp-remote bridges stdio ↔ HTTP for Glama introspection
RUN npm install -g mcp-remote
CMD ["mcp-remote", "https://swaptitan.net/mcp"]
