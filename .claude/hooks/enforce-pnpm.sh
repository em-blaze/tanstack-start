#!/bin/bash
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command')

if echo "$COMMAND" | grep -qE '(^|\s)(npm (install|run|ci|add|uninstall|update)|yarn (install|add|remove|run))'; then
  echo "Blocked: use pnpm instead of npm/yarn (e.g. pnpm install, pnpm run, pnpm add)" >&2
  exit 2
fi

exit 0
