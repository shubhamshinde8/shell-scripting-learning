# Shell Scripting Roadmap

This plan moves from beginner skills to practical Linux administration scripts. Move forward when you can explain and modify the examples, not just copy them.

## Phase 1 — Basics (Days 1–3)

- What a shell is; Bash versus a terminal
- Script files, shebang, execution permissions
- `echo`, `printf`, variables and quoting
- Command substitution: `$(date)`
- Reading input with `read`
- Exit status with `$?` and `exit`

**Checkpoint:** Write a script that prints the current user, date, and working directory, then asks for a name.

## Phase 2 — Conditions and loops (Days 4–6)

- `if`, `elif`, `else`
- String and numeric comparisons
- File tests such as `-f`, `-d`, and `-r`
- `case` for menu choices
- `for` and `while` loops

**Checkpoint:** Create a menu that repeats until the user chooses Exit.

## Phase 3 — Functions (Days 7–8)

- Define and call functions
- Pass arguments using `$1`, `$2`, and `"$@"`
- Local variables and return status
- Avoid repeating the same code

**Checkpoint:** Create a function that checks whether a given path is a file or directory.

## Phase 4 — Files and logs (Days 9–11)

- Read files line by line
- Search logs with `grep`
- Count matching lines with `wc`
- Handle missing files
- Quote paths and variables safely

**Checkpoint:** Analyze a sample log file and count lines containing `ERROR`. Use sample data, not sensitive production logs.

## Phase 5 — Linux administration (Days 12–14)

- Disk usage with `df` and `du`
- Memory overview with `free`
- Uptime and system information
- Service status checks with `systemctl` where available
- Basic backups using a dedicated practice directory

**Checkpoint:** Write a read-only system health report.

## Phase 6 — Reliability and advanced basics (Days 15–18)

- `set -u` and `set -o pipefail`; understand their effects
- Exit codes and error messages
- Debugging with `bash -x script.sh`
- Temporary files and cleanup concepts
- Scheduling concepts with cron
- Basic input validation

**Checkpoint:** Improve an earlier script so it validates input, reports errors clearly, and exits with an appropriate status.

## Phase 7 — Practical assessments (Days 19–21)

Complete Level 1, Level 2 and Level 3 under `assessments/`. Explain each command and test normal and invalid inputs.

## Safety habits

- Practice on Ubuntu/WSL using files you create yourself.
- Start with read-only commands.
- Do not put secrets into scripts or Git.
- Never test destructive scripts on work servers.
- Follow change approvals and your organization's procedures for operational tasks.
