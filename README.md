# devkit

A cross-platform developer utility toolkit by **Upayan Mazumder** — built for fast, no-bullshit automation.

## ✨ Features

- Recursively detect JS projects
- Auto-detect npm/pnpm/yarn
- Auto install dependencies
- PowerShell module (Windows + pwsh)
- Bash scripts (Linux/Mac)

---

## 🧰 PowerShell Usage

```pwsh
Import-Module ./pwsh/DevKit.psd1
Install-AllPackages -Depth 3
```
