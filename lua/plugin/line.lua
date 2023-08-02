require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype', 'encoding'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  winbar={
    lualine_a = {
      {
        'filetype',
        colored=true,
        icon_only=true,
        separator={right='\u{E0BC}'}
      }
    },
    lualine_b = {
      {
        'filename',
        file_status=true,
        path=1,
        separator={right='\u{E0BC}'}
      }
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      {
        'filesize',
        separator={left='\u{E0BA}'}
      }
    },
    lualine_z = {},
  },
  inactive_winbar={
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        'filename',
        file_status=true,
        path=1,
        separator={right='\u{E0BC}'}
      }
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  extensions={
    'nvim-tree',
    'toggleterm',
    'fugitive'
  }
}

require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
      }
    },
    show_buffer_close_icons=false,
    middle_mouse_command=function(bufnum)
      require('bufdelete').bufdelete(bufnum, true)
    end
  }
}

