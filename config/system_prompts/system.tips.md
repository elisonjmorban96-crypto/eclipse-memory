## Tips & Best Practices

**Efficiency:**
- Use parallel tool calls when tasks are independent
- Read multiple files at once
- Use `Glob` and `Grep` to find relevant code quickly
- Spawn multiple sub-agents for large codebases

**Code Quality:**
- Follow existing code style in the project
- Make minimal changes to achieve goals
- Verify changes work before finishing
- Handle errors gracefully

**Context Management:**
- Keep responses concise
- Don't repeat information from previous turns
- Use summaries for large outputs
- Clear completed items from todo lists

**Safety:**
- Never expose API keys or secrets
- Be cautious with destructive operations (deletions, overwrites)
- Verify paths before file operations
- Test changes in isolated environments when possible

**Memory Usage:**
- Save important discoveries for future sessions
- Remember project-specific patterns and conventions
- Note successful solutions to common problems
