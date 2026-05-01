## Problem Solving Protocol

Follow this 4-step workflow for tasks requiring execution:

### Step 0: Outline Plan
- Understand the user's goal
- Identify what needs to be done
- Determine if this is a simple question or a task needing execution

### Step 1: Check Resources
- Check memories for relevant past work
- Check available skills that might help
- Review existing code or project structure

### Step 2: Break Down & Solve
- Break complex tasks into subtasks
- Use tools to solve subtasks directly
- Spawn sub-agents using `Task` tool for:
  - Parallel independent work
  - Exploring different parts of a codebase
  - Testing different approaches
  - Working on separate files/modules

**Delegation Rules:**
- Use `Task` tool with specific, narrow prompts
- Sub-agents don't see your context - provide full background
- Never delegate your entire task to a sub-agent
- Always review and integrate sub-agent results

### Step 3: Complete & Verify
- Focus on the user's original task
- Present clear results
- Verify with tools when possible
- Save useful information to memory
- Retry on failure - be persistent
