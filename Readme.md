# Agent Backend Repository

This repository contains a collection of AI agents built using the Google Agent Development Kit (ADK). These agents demonstrate various capabilities such as web search, BigQuery interaction, code execution, and computer use.

## 🚀 Getting Started

### Prerequisites
- Python 3.10+
- Google ADK installed
- Appropriate API keys (Gemini, etc.) set up in your environment

### Installation
1. Clone the repository
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
   *(Note: Ensure you have a virtual environment active)*

## 🤖 Agents

This repository hosts several specialized agents:

- **Basic Search Agent** (`basic_search_agent/`): An agent capable of performing web searches to answer queries.
- **BigQuery Tool Agent** (`bq_tool_agent/`): Integrates with Google BigQuery to query and analyze data.
- **Code Executor Agent** (`code_executor_agent/`): Can execute code snippets safely to perform calculations or tasks.
- **Computer Use Agent** (`computer_use_agent/`): Demonstrates the ability to interact with a computer interface (Playwright/Browser).
- **Multi-Tool Agent** (`multi_tool_agent/`): Combines multiple tools for more complex problem solving.
- **MCP Connect Agent** (`mcp_connect_agent/`): Implements the Model Context Protocol (MCP) for connecting to external context sources.
- **Personal Assistant** (`personal_assistant/`): A general-purpose assistant agent.

## 🛠️ Usage

To run the ADK web interface or API server:

```bash
# Run the web interface
adk web

# Run the web interface (Windows specific if reloading issues occur)
adk web --no-reload

# Run with specific origin permissions
adk web --allow_origins="*"
```

To run the API server:
```bash
adk api_server --allow_origins="*"
```

## 📚 Resources & References

### 🌟 Essential ADK Links
- [Get Started with ADK](https://google.github.io/adk-docs/)
- [Sample Agents](https://github.com/google/adk-samples)
- [ADK Built-in Tools (Google Search)](https://google.github.io/adk-docs/tools/built-in-tools/#google-search)
- [Multi-Agent Systems](https://google.github.io/adk-docs/agents/multi-agents/)
- [Gemini API Pricing](https://ai.google.dev/gemini-api/docs/pricing)

### 📊 Data Science & BigQuery
- [Data Science Agent Capabilities](https://goo.gle/4jLUz4b)
- [Data Science Agent GitHub Sample](https://github.com/google/adk-samples/tree/main/python%2Fagents%2Fdata-science)
- [Data Engineering Agent Sample](https://github.com/google/adk-samples/tree/4d8f7a2afbae3f90390a0e2f7284afb2d96e39d6/python/agents/data-engineering)
- [Want to learn more about Chase-SQL?](https://goo.gle/3RvnpJX)
- [BIRD Leaderboard](https://goo.gle/4jnbNFd)
- [BigQuery Console (Project: andy-project-21)](https://console.cloud.google.com/bigquery?referrer=search&project=andy-project-21&ws=!1m5!1m4!4m3!1sandy-project-21!2stest_ds_01!3stest_table)
- [Blog: Gathering Advanced Data Agent and ML Tools under BigQuery AI](https://cloud.google.com/blog/products/data-analytics/gathering-advanced-data-agent-and-ml-tools-under-bigquery-ai)
- [Blog: AI-based Forecasting and Analytics in BigQuery via MCP and ADK](https://cloud.google.com/blog/products/data-analytics/ai-based-forecasting-and-analytics-in-bigquery-via-mcp-and-adk)
- [Blog: BigQuery Meets Google ADK and MCP](https://cloud.google.com/blog/products/ai-machine-learning/bigquery-meets-google-adk-and-mcp)

### 🧠 RAG & Data Stores
- [Parse and Chunk Documents (RAG)](https://docs.cloud.google.com/generative-ai-app-builder/docs/parse-chunk-documents#parse-chunk-rag)
- [Create Data Store (Console)](https://console.cloud.google.com/gen-app-builder/data-stores/create?project=andy-project-21)
- [Create a Data Store (Docs)](https://docs.cloud.google.com/generative-ai-app-builder/docs/try-enterprise-search#create_a_data_store)
- [Vertex AI RAG Engine Tool](https://google.github.io/adk-docs/tools/built-in-tools/#vertex-ai-rag-engine)

### 💻 Computer Use & Web Agents
- [Gemini Computer Use Model](https://blog.google/technology/google-deepmind/gemini-computer-use-model/)
- [Computer Use Preview (GitHub)](https://github.com/google/computer-use-preview)
- [Browserbase](http://gemini.browserbase.com/)
- [Awesome Web Agents](https://github.com/steel-dev/awesome-web-agents)

### 📖 Tutorials, Blogs & Codelabs
- [Blog: From Zero to Assistant with ADK](https://cloud.google.com/blog/topics/developers-practitioners/tools-make-an-agent-from-zero-to-assistant-with-adk)
- [Codelabs: Onramp Instructions](https://codelabs.developers.google.com/onramp/instructions#0)
- [Getting Started with Google ADK (PraveenKS30)](https://github.com/PraveenKS30/getting-started-google-adk/tree/main)
- [Blog: Building Forkcast (Multi-Agent System)](https://medium.com/@parthmaradia2002/building-forkcast-how-i-created-a-multi-agent-ai-system-to-end-group-dining-chaos-forever-15d7fed85037)
- [Blog: Agent Development Kit Tags](https://iamulya.one/tags/agent-development-kit/)
- [Community on Neo4J and ADK](https://discuss.google.dev/t/using-googles-agent-development-kit-adk-with-mcp-toolbox-and-neo4j/187356)

### 🎥 Videos
- [YouTube: ADK Overview](https://www.youtube.com/watch?v=hWJqBF8YgsA)
- [YouTube: DataScience Agent](https://www.youtube.com/watch?v=efcUXoMX818)

### 🇨🇦 Government & Community
- [Impact Canada: G7 GovAI Challenge](https://impact.canada.ca/en/challenges/g7-govAI)
- [Impact Canada: Webinar Nov 25](https://impact.canada.ca/en/challenges/g7-govai/webinar-nov25)
- [SSC-DSAI GitHub](https://github.com/ssc-dsai)
- [i.ai Lex GitHub](https://github.com/i-dot-ai/lex)
- [Healthcare Facilities](https://open.canada.ca/data/en/dataset/543fe07a-fd79-40e9-a829-ccd697526765/resource/49a82026-e60c-4a28-827e-249599e88123)

### 🔗 Other Resources
- [Open Slum](https://open-slum.org/)
- [LibGen](https://libgen.gl/)

## 💡 Concepts

- **Agent as Tools (AgentTool)**: The calls come back to the main agent.
- **Agent as Subagents**: The call is transferred to them and not returned immediately.
