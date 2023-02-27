function get_mode()
    mode_map = {
        ['n']     = ' NORMAL  ',
        ['no']    = 'O-PENDING',
        ['nov']   = 'O-PENDING',
        ['noV']   = 'O-PENDING',
        ['no\22'] = 'O-PENDING',
        ['niI']   = ' NORMAL  ',
        ['niR']   = ' NORMAL  ',
        ['niV']   = ' NORMAL  ',
        ['nt']    = ' NORMAL  ',
        ['ntT']   = ' NORMAL  ',
        ['v']     = ' VISUAL  ',
        ['vs']    = ' VISUAL  ',
        ['V']     = ' V-LINE  ',
        ['Vs']    = ' V-LINE  ',
        ['\22']   = ' V-BLOCK ',
        ['\22s']  = ' V-BLOCK ',
        ['s']     = ' SELECT  ',
        ['S']     = ' S-LINE  ',
        ['\19']   = ' S-BLOCK ',
        ['i']     = ' INSERT  ',
        ['ic']    = ' INSERT  ',
        ['ix']    = ' INSERT  ',
        ['R']     = ' REPLACE ',
        ['Rc']    = ' REPLACE ',
        ['Rx']    = ' REPLACE ',
        ['Rv']    = 'V-REPLACE',
        ['Rvc']   = 'V-REPLACE',
        ['Rvx']   = 'V-REPLACE',
        ['c']     = ' COMMAND ',
        ['cv']    = '   EX    ',
        ['ce']    = '   EX    ',
        ['r']     = ' REPLACE ',
        ['rm']    = '  MORE   ',
        ['r?']    = ' CONFIRM ',
        ['!']     = '  SHELL  ',
        ['t']     = 'TERMINAL ',
    }
    local mode_code = vim.api.nvim_get_mode().mode
    if mode_map[mode_code] == nil then
        return mode_code
    end
    return mode_map[mode_code]
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        -- lualine_a = {'mode'},
        lualine_a = { get_mode },
        lualine_b = { 'branch', 'diff', {'diagnostics', on_click= function() require('telescope.builtin').diagnostics({}) end}}, -- TODO: open telescope diagnostics on click

        -- TODO: open git status when click on branch
        --
        -- lualine_c = { {'%=', separator = ""}, {'filename', separator = "", on_click = function() vim.cmd.file() end}};
        lualine_c = { {'filename', on_click = function() vim.cmd.file() end}};
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
