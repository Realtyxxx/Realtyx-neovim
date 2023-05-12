if vim.g.neovide then
  -- !!!change use mac's meta
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_input_use_logo = false -- true on macOS

  -- vim.o.guifont = "Source Code Pro:h14" -- text below applies for VimScript
  --https://neovide.dev/features.html
  vim.o.guifont = "Hack,Noto_Color_Emoji:h13:b"
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_hide_mouse_when_typing = true

  -- Helper function for transparency formatting
  local alpha = function()
    local ts = 0.88
    return string.format("%x", math.floor((255 * vim.g.transparency) or ts))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.88
  vim.g.neovide_background_color = "#0f1117" .. alpha()

  -- blur
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_underline_automatic_scaling = false

  -- refresh rate fps
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_no_idle = true

  -- confirm quit
  vim.g.neovide_confirm_quit = true

  -- full screen
  vim.g.neovide_fullscreen = false

  -- remember previews window size
  vim.g.neovide_remember_window_size = false

  -- profiler
  vim.g.neovide_profiler = false

  -- cursor animation
  vim.g.neovide_cursor_trail_size = 0.6
  vim.g.neovide_cursor_animation_length = 0.10
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true

  -- cursor particles
  vim.g.neovide_cursor_vfx_mode = "railgun" --[railgun, ripple, sonicboom, pixiedust, torpedo, wireframe]
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_density = 7.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
  -- -- only for railgun
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0
end --Neovide
