return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'rmagatti/auto-session',
    },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      }

      _Gopts = {
        position = 'center',
        hl = 'Type',
        -- wrap = "overflow";
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('SPC j', '󰈚   Restore Session', ':SessionRestore<cr>'),
        dashboard.button('e', '   New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button(
          'f',
          '   Find file',
          "<cmd>lua require('telescope.builtin').find_files({hidden = true, file_ignore_patterns={'.git', 'node_modules'}})<CR>"
        ),
        dashboard.button('g', '󰱼   Find word', ':Telescope live_grep<CR>'),
        dashboard.button('r', '   Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('c', '   Config', ':e $MYVIMRC <CR>:cd ~/.config/nvim/ <CR>'),
        dashboard.button('m', '󱌣   Mason', ':Mason<CR>'),
        dashboard.button('l', '󰒲   Lazy', ':Lazy<CR>'),
        dashboard.button('u', '󰂖   Update plugins', "<cmd>lua require('lazy').sync()<CR>"),
        dashboard.button('q', '   Quit NVIM', ':qa<CR>'),
      }

      local function footer()
        return 'Nick Kuek'
      end
      dashboard.section.footer.val = footer()

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)

      require('alpha').setup(dashboard.opts)
    end,
  },
}
