-- Entrypoint ./lua/ and file type .lua is impled.
require "user.options" 		  -- Vim general configuration
require "user.keymaps"		  -- Key bindings and remappings
require "user._plugins"		  -- Configure packer and install plugins
-- Plugin configurations
require "user.colorscheme"  -- Colorscheme configuration
require "user.cmp"		      -- Auto completion
require "user.lsp"		      -- Language Server Protocol
require "user.telescope"    -- Telescope fuzzy finder configuration
require "user.treesitter"   -- Treesitter (AST) configuration
require "user.autopairs"    -- Smarter bracket-pairs
require "user.comment"      -- Smart comment/uncomment and scope aware
require "user.gitsigns"     -- Git integration
require "user.nvim-tree"    -- File tree explorer
require "null-ls"
