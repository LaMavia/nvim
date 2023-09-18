local utils = require "astronvim.utils"
local is_available = utils.is_available

return function(maps) 
  -- Smart Splits
  if is_available "smart-splits.nvim" then
    maps.n["<c-left>"] = { function() require("smart-splits").move_cursor_left() end, desc = "move to left split" }
    maps.n["<c-down>"] = { function() require("smart-splits").move_cursor_down() end, desc = "move to below split" }
    maps.n["<c-up>"] = { function() require("smart-splits").move_cursor_up() end, desc = "move to above split" }
    maps.n["<c-right>"] = { function() require("smart-splits").move_cursor_right() end, desc = "move to right split" }
    maps.n["<c-k>"] = { function() require("smart-splits").resize_up() end, desc = "resize split up" }
    maps.n["<c-j>"] = { function() require("smart-splits").resize_down() end, desc = "resize split down" }
    maps.n["<c-h>"] = { function() require("smart-splits").resize_left() end, desc = "resize split left" }
    maps.n["<c-l>"] = { function() require("smart-splits").resize_right() end, desc = "resize split right" }
  else
    maps.n["<c-left>"] = { "<c-w>h", desc = "move to left split" }
    maps.n["<c-down>"] = { "<c-w>j", desc = "move to below split" }
    maps.n["<c-up>"] = { "<c-w>k", desc = "move to above split" }
    maps.n["<c-right>"] = { "<c-w>l", desc = "move to right split" }
    maps.n["<c-k>"] = { "<cmd>resize -2<cr>", desc = "resize split up" }
    maps.n["<c-j>"] = { "<cmd>resize +2<cr>", desc = "resize split down" }
    maps.n["<c-h>"] = { "<cmd>vertical resize -2<cr>", desc = "resize split left" }
    maps.n["<c-l>"] = { "<cmd>vertical resize +2<cr>", desc = "resize split right" }
  end

  return maps
end

