local wezterm = require('wezterm')

-- Detectar plataforma
local function is_mac()
   return wezterm.target_triple == "aarch64-apple-darwin" or wezterm.target_triple == "x86_64-apple-darwin"
end

local function is_win()
   return wezterm.target_triple:find("windows") ~= nil
end

local function is_linux()
   return wezterm.target_triple:find("linux") ~= nil
end

local options = {
   default_prog = {},
   launch_menu = {},
}

-- Configuración por plataforma
if is_win() then
   options.default_prog = { 'pwsh', '-NoLogo' }
   options.launch_menu = {
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
      { label = 'Command Prompt', args = { 'cmd' } },
   }
elseif is_mac() then
   options.default_prog = { '/bin/zsh', '-l' } -- Usar Zsh en macOS
   options.launch_menu = {
      { label = 'Zsh', args = { '/bin/zsh', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } }, -- Opcional si tienes Fish
      { label = 'Bash', args = { '/bin/bash', '-l' } },
   }
elseif is_linux() then
   options.default_prog = { '/bin/bash', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { '/bin/bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
