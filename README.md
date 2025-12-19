# LatentSalvia

**LatentSalvia** is a calm, high-contrast terminal theme designed for long research sessions.  
It emphasizes semantic color usage, clear visual hierarchy, and low visual fatigue.

The design is inspired by ideas from **representation learning**, **flow-based models**, and **vision–language alignment**: smooth structure, stable signals, and friendly but unambiguous feedback.

LatentSalvia is optimized and tested on **macOS Terminal.app**.

---

## Preview

![LatentSalvia ANSI Showcase](LatentSalvia-base-v1-showcase.png)

> Screenshot captured from Terminal.app using the real cursor, showing the output of `ansi_showcase.sh`.

---

## Repository Contents

```

.
├── LatentSalvia-base-v1.terminal      # Terminal.app profile (colors, font, ANSI)
├── ansi_showcase.sh                   # Single-screen ANSI showcase script
├── LatentSalvia-base-v1-showcase.png  # Screenshot of the showcase output
├── README.md
└── LICENSE

````

---

## Installation (macOS Terminal.app)

1. Open **Terminal → Settings → Profiles**
2. Click the gear icon → **Import…**
3. Select `LatentSalvia-base-v1.terminal`
4. (Optional) Set it as the default profile

---

## Prompt Color Style (Important)

LatentSalvia uses an explicitly colored prompt to clearly separate:

- **prompt** (user input)
- **command output**
- **semantic highlights**

Add the following to your `~/.zshrc`:

```bash
# Prompt color separation (Menlo-friendly, soft theme)
PROMPT='%F{245}%n@%m%f %F{108}%~%f %F{229}%%%f '

# Enable colorized ls on macOS
alias ls='ls -G'
````

This results in:

* **Username / host** → muted gray
* **Working directory** → sage green
* **Prompt symbol (`%`)** → warm yellow

This hierarchy greatly improves scanability during long sessions.

Apply changes with:

```bash
source ~/.zshrc
```

---

## Base Colors

| Role       | HEX       |
| ---------- | --------- |
| Text       | `#FF90AA` |
| Background | `#3E5846` |
| Cursor     | `#FFF656` |

---

## ANSI Color Palette

### Normal ANSI Colors (0–7)

| ANSI | Name    | Semantic Role           | HEX       |
| ---: | ------- | ----------------------- | --------- |
|    0 | Black   | Background / separators | `#2C3E34` |
|    1 | Red     | Errors                  | `#9E202D` |
|    2 | Green   | Success / executables   | `#68B255` |
|    3 | Yellow  | Warnings                | `#D4BA76` |
|    4 | Blue    | Directories / structure | `#54A89C` |
|    5 | Magenta | Accents                 | `#A66FB1` |
|    6 | Cyan    | Info / symlinks         | `#4487B6` |
|    7 | White   | Default foreground      | `#F1EDEA` |

---

### Bright ANSI Colors (8–15)

| ANSI | Name           | Semantic Role       | HEX       |
| ---: | -------------- | ------------------- | --------- |
|    8 | Bright Black   | Comments / dim text | `#6F8F7E` |
|    9 | Bright Red     | Fatal errors        | `#E34A5A` |
|   10 | Bright Green   | Strong success      | `#8EE07A` |
|   11 | Bright Yellow  | Highlights          | `#F2DE9A` |
|   12 | Bright Blue    | Focus / emphasis    | `#7AD0C4` |
|   13 | Bright Magenta | Strong accents      | `#D89BE6` |
|   14 | Bright Cyan    | Notices / info      | `#6FB3E8` |
|   15 | Bright White   | Maximum contrast    | `#FFFFFF` |

---

## ANSI Showcase Script

To verify the theme on your system:

```bash
bash ansi_showcase.sh
```

The showcase is intentionally designed to:

* fit within a single terminal screen (29 lines at font size 24)
* demonstrate realistic scenarios (`ls`, logs, git diff)
* show both **normal** and **bright** ANSI colors
* serve as a visual regression test after any changes

---

## License

See [LICENSE](LICENSE).

---

## Philosophy

LatentSalvia favors:

* calm contrast over aggressive brightness
* semantic consistency over decoration
* friendliness without ambiguity

It is meant to be lived in, not just looked at.
