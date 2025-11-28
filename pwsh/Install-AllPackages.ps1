function Install-AllPackages {
    param(
        [int]$Depth = 3
    )

    Write-Host "🔍 Scanning for JS projects up to depth $Depth..."

    Get-ChildItem -Directory -Recurse -Depth $Depth | ForEach-Object {
        $path = $_.FullName
        $pkg = Join-Path $path "package.json"

        if (Test-Path $pkg) {
            Write-Host ""
            Write-Host "📦 Project found: $path"

            if (Test-Path (Join-Path $path "pnpm-lock.yaml")) {
                Write-Host "👉 Installing with pnpm..."
                pnpm install --dir $path
            }
            elseif (Test-Path (Join-Path $path "yarn.lock")) {
                Write-Host "👉 Installing with yarn..."
                yarn install --cwd $path
            }
            elseif (Test-Path (Join-Path $path "package-lock.json")) {
                Write-Host "👉 Installing with npm..."
                npm install --prefix $path
            }
            else {
                Write-Host "🤷 No lockfile found — defaulting to npm..."
                npm install --prefix $path
            }
        }
    }
}
