#!/bin/bash
cd /Users/allenxie/.openclaw-autoclaw/workspace/ai-opportunities
if git push origin main 2>&1; then
  # Success - remove this cron job
  /opt/homebrew/bin/openclaw im-remind remove --job-id push-retry 2>/dev/null
fi
