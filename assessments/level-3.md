# Level 3 — Linux Administration and Reliability

Use only your Ubuntu/WSL lab and test files you own.

1. Create a read-only report with `df -h`, `free -h`, and `uptime`.
2. Write a service status checker that requires a service name as an argument.
3. Create a compressed backup of a test directory into an existing destination directory.
4. Validate arguments and show a useful usage message.
5. Explain the exit status of each command and how you would troubleshoot a failure.
6. Run a script with `bash -x script.sh` and explain the trace.

## Self-check (10 points)

- [ ] Uses read-only checks where possible (2)
- [ ] Validates inputs (2)
- [ ] Quotes paths and variables (2)
- [ ] Handles errors and exit codes (2)
- [ ] Explains risks and tests only in the lab (2)

**Pass target:** 8/10. Never use an untested practice script on a production server.
