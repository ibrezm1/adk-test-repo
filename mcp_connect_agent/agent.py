from google.adk.agents.llm_agent import Agent
#from google.adk.mcp import MCPToolset, SseServerParams,StreamableHTTPServerParams
from google.adk.tools.mcp_tool import MCPToolset, StreamableHTTPConnectionParams

# Example for a remote SSE server
mcp_server_address = 'https://lex.lab.i.ai.gov.uk/mcp'
mcp_tools = MCPToolset(connection_params=StreamableHTTPConnectionParams(url=mcp_server_address))

# Example for a local server using StdioServerParameters
# from adk.mcp import StdioServerParameters
# mcp_tools = MCPToolset(connection_params=StdioServerParameters(command='npx', args=['mcp-server-command', '--path', '/some/folder']))

root_agent = Agent(
    model='gemini-2.5-flash-lite',
    name='root_agent',
    description='A helpful assistant for user questions.',
    #instruction='Answer user questions to the best of your knowledge',
            instruction='Use the MCP tools to assist the user.',
        tools=[mcp_tools]
)
