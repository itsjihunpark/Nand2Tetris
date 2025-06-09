# Commit message convention

## Structure

`<type>[optional scope]: <description>`

[optional body]

[optional footer(s)]

| Type       | Purpose                                                    |
| ---------- | ---------------------------------------------------------- |
| `feat`     | A new feature                                              |
| `fix`      | A bug fix                                                  |
| `chore`    | Routine task or maintenance (e.g., config, tooling)        |
| `refactor` | Code changes that neither fix a bug nor add a feature      |
| `docs`     | Documentation-only changes                                 |
| `style`    | Code style changes (formatting, missing semi-colons, etc.) |
| `test`     | Adding or updating tests                                   |
| `perf`     | Performance improvement                                    |
| `build`    | Changes affecting build system or dependencies             |
| `ci`       | Changes to CI configuration                                |
| `revert`   | Reverts a previous commit                                  |

## Example

- feat: add user login functionality

- fix: correct typo in payment validation

- chore: reset project to clean state

- refactor(core): simplify state management logic
