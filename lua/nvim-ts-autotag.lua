local internal = require("nvim-ts-autotag.internal")

local M = {}

function M.init()
  require "nvim-treesitter".define_modules {
    autotag = {
      module_path = 'nvim-ts-autotag.internal',
      is_supported = function(lang)
        return internal.is_supported(lang)
      end,
    }
  }
end

function M.setup(opts)
  internal.setup(opts)
end

return M
