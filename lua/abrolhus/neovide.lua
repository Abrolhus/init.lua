--- my neovide configs

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    vim.opt.guifont = { "CodeNewRoman Nerd Font Mono", "h14" } -- text below applies for VimScript
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_transparency = 0.97
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_underline_automatic_scaling = false
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5
    vim.g.neovide_no_idle = true
    vim.g.neovide_confirm_quit = false
    vim.g.neovide_fullscreen = false
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_trail_size = 0.2
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_unfocused_outline_width = 0.125
    vim.g.neovide_cursor_vfx_mode = ""
    vim.opt.winblend = 10
    vim.opt.pumblend = 10;
    vim.keymap.set({ "n", "v"}, "<c-S-v>", [["+p]]) -- makes c-S-v work
    vim.keymap.set({"i"}, "<c-S-v>", [[<C-r>+]]) -- makes c-S-v work
    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
          vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
      end
      vim.keymap.set("n", "<C-=>", function()
            change_scale_factor(1.25)
        end)
        vim.keymap.set("n", "<C-->", function()
              change_scale_factor(1/1.25)
          end)
end
