# Shell Scripting Learning Journey

A practical, step-by-step Bash learning repository. The goal is to learn shell scripting by writing, running, understanding, and improving small scripts—not by memorizing commands.

## Learning environment

- **Primary lab:** Ubuntu on WSL
- **Shell:** Bash
- **Editor:** Any text editor (VS Code is optional)
- **Work-server note:** Use RHEL-specific commands only when working on organization servers and follow your organization's change and access policies.

## Roadmap

1. **Basics:** terminal, shebang, output, variables, command substitution, input and exit codes.
2. **Conditions and loops:** `if`, `case`, `for`, `while`.
3. **Functions:** reusable blocks, arguments, return status.
4. **Files and logs:** paths, file tests, reading files, safe log inspection.
5. **Linux administration:** disk usage, service status, backups and basic health checks.
6. **Reliable scripts:** quoting, error handling, permissions, debugging and scheduling concepts.
7. **Assessments:** practical tasks that test understanding.

See [ROADMAP.md](ROADMAP.md) for the plan and [progress-tracker.md](progress-tracker.md) to record progress.

## Run a script

From the repository directory on Ubuntu/WSL:

```bash
bash 01-basics/hello-world.sh
```

Or make it executable and run it directly:

```bash
chmod +x 01-basics/hello-world.sh
./01-basics/hello-world.sh
```

## Learning rules

- Read each script before running it.
- Prefer test files and sample data while learning.
- Do not run scripts with `sudo` unless you understand every command and genuinely need elevated privileges.
- Never put passwords, access tokens, private keys, or other secrets in this repository.
- Avoid destructive commands such as broad `rm`, disk formatting, or production changes in practice scripts.
- Commit your work with clear messages, for example: `Add first variables exercise`.

## Suggested weekly rhythm

Study for 30–45 minutes per session, 4–5 sessions per week. For each topic: learn the idea, run the example, change it, explain the output in your own words, then complete the exercise.

## Repository map

- `01-basics/` — first commands, variables and input
- `02-conditions-loops/` — decisions and repetition
- `03-functions/` — reusable code
- `04-files-and-logs/` — safe file checks and log reading
- `05-linux-admin/` — basic system checks
- `06-advanced/` — error handling and scheduling notes
- `assessments/` — practical checkpoints
