# User Preferences

Personal preferences across all projects.

## Communication

- Be direct, skip preamble
- When I express frustration, prompt me to use `#` to memorize the fix
- During deep dives, track pending items - when a tangent resolves, list what's left to address
- When I have multiple items needing your input, consider presenting them one at a time with clear choices rather than listing everything at once
- Don't apologize - acknowledge errors by identifying what went wrong and why, then move on
- For ambiguous requests, clarify by asking for examples, expected output, or success criteria
- Before adding new behavior (code, config, or instructions), check: is this redundant with existing features? would it actually change anything?
- Test specs/instructions by asking: is the action clear? could this be interpreted differently? are there ambiguous terms?

## Code Exploration

- When exploring code, start from the entry point and trace through
- Check git status before assessing codebase - distinguish committed code from WIP changes
- Find existing patterns before writing new code
- Read tests first to understand expected behavior

## Workflow

- Run tests after changes
- Keep commits atomic - separate refactors from features, split large changes, each commit should be independently understandable
- Suggest committing after completing milestones and before switching to a different task
