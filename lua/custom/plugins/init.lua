-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kdheepak/lazygit.nvim',
    config =function ()
      vim.keymap.set('n', '<space>gl', ':LazyGit<CR>', { desc = 'Show LazyGit' })
    end
  },
  'dimasg/vim-mark',
  'hwgao/vim-rooter',
  'MattesGroeger/vim-bookmarks',
  {
    'mhinz/vim-grepper',
    config =function ()
      vim.keymap.set('n', ',', ':Grepper -tool rg -query <C-R>=expand("<cword>")<CR><CR>', { desc = 'Search word under cursor' })
      vim.keymap.set('n', '<space>,', ':Grepper -tool rg -buffers -noprompt -cword<CR>', { desc = 'Search word in all opened buffers' })
  end
  },
  'cdelledonne/vim-cmake',
  {
    'preservim/tagbar',
    config =function ()
      vim.keymap.set('n', '<F8>', ':TagbarToggle<CR>', { desc = 'Toggle tagbar' })
    end
  },
  'equalsraf/neovim-gui-shim',
  {
    'alexghergh/nvim-tmux-navigation',
     config = function()
      local nvim_tmux_nav = require('nvim-tmux-navigation')
      nvim_tmux_nav.setup {
        disable_when_zoomed = true -- defaults to false
      }
      vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
      vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
      vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
      vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
      vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
     end
  },
  { 'echasnovski/mini.nvim', version = '*' },
    {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
