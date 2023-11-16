# Usage

```lua
require'lspconfig'.bashls.setup{
    cmd = {"podman", "run", "--rm", "-i", "--workdir", vim.loop.cwd(),  "--pid", "host", "-v", "/home:/home:ro", "bash-language-server"}
}
```
