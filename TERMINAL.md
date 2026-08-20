# Terminal Playbook

How this setup fits together, and the muscle memory worth building.
Everything here is configured by this repo (`zsh/.zshrc`, `git/gitconfig`,
`ghostty/config`) — clone + `./install.sh` replays it on any machine.

## The mental model

Every terminal task is one of five questions. Each has exactly one answer:

| Question | Answer | Tool |
|---|---|---|
| I know **where** I'm going | `cd <keyword>` | zoxide |
| I know **roughly** where | `zi <keyword>` or `Alt+C` | zoxide picker / fzf |
| I'm looking for a **file** | `Ctrl+T` or `fd <name>` | fzf / fd |
| I'm looking for **code** | `rgf <pattern>` | rg + fzf + nvim |
| I've **done this before** | `Ctrl+R` | fzf history |

If you're about to press `↑` more than twice, you wanted `Ctrl+R`.
If you're about to type a long path, you wanted `cd <keyword>` or `Ctrl+T`.
If you're about to `ls`+`cd` repeatedly to explore, you wanted `Alt+C`.

## The fzf trio — the biggest daily win

- **`Ctrl+R`** — fuzzy history search. Stop pressing ↑↑↑; type any fragment
  of a past command (`brew inst`, `stress`) and hit Enter. This alone is the
  highest-value habit.
- **`Ctrl+T`** — fuzzy **file** picker with a `bat` syntax-highlighted
  preview pane. Type `nvim ` then `Ctrl+T`, fuzzy-type the filename, Enter —
  the path drops into your command line. Backed by `fd`, so it's fast and
  skips `.git`/gitignored junk.
- **`Alt+C`** (left Option+C) — fuzzy **directory** jumper with a preview of
  each folder's contents. Zoxide jumps to places you *know*; `Alt+C` explores
  places you *don't*.

Also: `**<Tab>` triggers fzf inside completions —
`nvim **<Tab>`, `kill -9 **<Tab>` (picks from live processes), `ssh **<Tab>`.

## Jumping around — zoxide

- `cd <real-path>` — works exactly as always, and every visit trains the
  frecency database.
- `cd <keyword>` (or `z`) — from anywhere, `cd dotfiles` →
  `~/Projects/Personal/dotfiles`. Multiple keywords narrow: `cd pers dot`.
- `zi <keyword>` — interactive picker when the keyword is ambiguous.
- `cd -` — bounce back to the previous directory.

If `cd` ever jumps somewhere surprising, `zi` shows the ranked list and why.

## Search like a pro

- **`rgf <pattern>`** — live ripgrep across the repo, `bat` preview centered
  on the matching line, Enter opens **nvim at exactly that line**. The
  competitive-programming superpower: `rgf dfs` inside the codeforces folder.
- `rg <pattern>` — plain fast content grep.
- `fd <name>` — find files by name.

Both respect `.gitignore` by default; add `-u` to search ignored files too.

## Looking at things

- `ls` / `ll` / `la` / `lt` are now **eza**: `ll` is a proper table with
  per-file git status; `lt` prints a two-level tree.
- `cat file` is now **bat** — syntax highlighting, line numbers.
  (Raw original when needed: `command cat`.)
- `git diff` / `log` / `show` render through **delta**: light theme, line
  numbers, word-level highlights, moved-code detection. In a long diff,
  `n`/`N` jump between files. Merge conflicts use `zdiff3` style, which
  shows the common ancestor — dramatically easier to resolve.

## Ghostty moves

- `Cmd+D` / `Cmd+Shift+D` — split right / down. Editor left, compile-run
  loop right. Inactive splits dim slightly.
- `Cmd+Opt+arrows` — move between splits.
- `Cmd+Up` / `Cmd+Down` — jump between previous prompts; the fastest way
  back through long stress-test output.
- `` Cmd+` `` — global quick terminal over any app.
- `Cmd+Shift+,` — reload Ghostty config after editing it.

## Maybe later (deliberately not installed)

- **atuin** — synced, SQLite-backed shell history with stats; the next
  upgrade if `Ctrl+R` becomes your main tool.
- **tmux** — Ghostty splits + `window-save-state` cover local use; tmux
  matters mainly over SSH.
