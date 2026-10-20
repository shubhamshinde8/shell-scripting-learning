# Cron Jobs — Notes

Cron is a scheduler on many Linux systems. It can run commands at planned times. Learn the syntax before scheduling anything.

## Format

```text
minute hour day-of-month month day-of-week command
```

Example: `0 9 * * 1` means 09:00 every Monday, using the machine's configured time zone.

## Safe learning checklist

1. Learn `crontab -l` to list your own scheduled jobs.
2. Use a harmless script that writes a timestamp to a test log in your home directory.
3. Use absolute paths because cron usually has a smaller environment than an interactive shell.
4. Redirect output to a log while testing.
5. Remove practice jobs when finished.

Do not add or change scheduled jobs on organization servers without the appropriate approval. Avoid scheduling scripts that delete, modify, restart, or deploy anything until you fully understand the impact.
