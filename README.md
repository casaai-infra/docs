# CasaAI Documentation

CasaAI docs live at [https://docs.casaai.dev](https://docs.casaai.dev). Use this repo to preview docs locally with Mintlify.

## Requirements

- **Node.js**: Version >= 18 and < 25 (Node 25+ is not supported by `mint dev`)
- **Recommended**: Node 22 LTS (specified in `.nvmrc`)

## First-time Setup

If you're using Node 25+ or don't have Node 22 installed:

### Option 1: Using nvm (Recommended)

1. **Install nvm** (if not already installed):
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
   ```

2. **Restart your terminal** or source your shell config:
   ```bash
   source ~/.zshrc  # or ~/.bashrc
   ```

3. **Install and use Node 22**:
   ```bash
   cd /Users/ayushsharma/Desktop/CasaAI/docs
   nvm install 22
   nvm use 22
   ```

   Or simply run the setup script:
   ```bash
   bash setup-node.sh
   ```

### Option 2: Manual Installation

Download and install Node.js 22 LTS from [nodejs.org](https://nodejs.org/).

## Quick Local Preview

Once you have Node 22 active:

```bash
# From the repo root
nvm use           # Automatically uses version from .nvmrc (22.12.0)
npm run dev       # Runs `npx mint dev`
```

Then open `http://localhost:3000` in your browser.

<Note>
If `nvm use` prompts you to install Node 22, type `y` to proceed.
</Note>

### Alternative: Using Global CLI

If you prefer using the global Mintlify CLI:

```bash
npm install -g mint
mint dev
```

## Troubleshooting

### "mint dev is not supported on node versions 25+"

**Solution**: Switch to Node 22 using nvm:
```bash
nvm use 22
# If Node 22 isn't installed:
nvm install 22 && nvm use 22
```

### Port Already in Use

Use a different port:
```bash
npm run dev -- --port 3333
```

### nvm Command Not Found

Make sure nvm is loaded in your shell. Add to `~/.zshrc` (or `~/.bashrc`):
```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

Then restart your terminal or run `source ~/.zshrc`.

### Stale CLI Version

Update the global CLI or use npx (which always uses latest):
```bash
npm update -g mint
# Or just use: npm run dev (uses npx)
```

## Development Workflow

1. Make changes to `.mdx` files in the docs directory
2. Preview automatically updates at `http://localhost:3000`
3. Commit and push changes to deploy

## Deployment

Changes are automatically deployed when pushed to the default branch (if Mintlify GitHub app is installed).

For manual deployment, see [Mintlify deployment docs](https://mintlify.com/docs/deployment).
