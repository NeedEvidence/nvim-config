return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = 'rafamadriz/friendly-snippets',
    version = "v2.*",
    config = function() 
      require('luasnip.loaders.from_vscode').lazy_load()
      require('luasnip.loaders.from_vscode').lazy_load({ paths = {'~/.config/nvim/luasnippets/'}})
    end


  },
  {
    'saghen/blink.cmp',
    lazy = false, -- lazy loading handled internally
    -- optional: provides snippets for the snippet source
    dependencies = {'L3MON4D3/LuaSnip'},
    enabled = true,
    -- use a release tag to download pre-built binaries
    version = 'v0.*',
    -- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- see the "default configuration" section below for full documentation on how to define
      -- your own keymap. when defining your own, no keybinds will be assigned automatically.
      keymap = {
        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<C-l>'] = { 'snippet_forward', 'fallback' },
        ['<C-h>'] = { 'snippet_backward', 'fallback' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<Tab>'] = { 'select_next', 'fallback' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      },
      appearance = {
        -- sets the fallback highlight groups to nvim-cmp's highlight groups
        -- useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release, assuming themes add support
        nerd_font_variant = 'normal',
        use_nvim_cmp_as_default = true,
      },
      -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- adjusts spacing to ensure icons are aligned
      ---@diagnostic disable-next-line: missing-fields
      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },
      cmdline = {
        enabled = false,
      },
      snippets = { preset = 'luasnip' },
      completion = {
        documentation = {
          auto_show = true,
        },
        ghost_text = {
          enabled = false,
        },
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
        trigger = {
          show_on_blocked_trigger_characters = { ' ', '\n', '\t', '>', ',' },
          show_on_x_blocked_trigger_characters = { "'", '"', '(', '>', '}', ',', '{', '[', ']' },
        },
        menu = {
          auto_show = function(ctx) return ctx.mode ~= 'cmdline' end,
        }
      },
      signature = {
        enabled = false,
      },
    },
  }
}
