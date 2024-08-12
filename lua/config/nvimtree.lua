-- Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Setup nvim-tree with a custom on_attach function
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- Custom mapping
    vim.keymap.set('n', '<C-e>', function()
        local node = api.tree.get_node_under_cursor()
        if node then
            local path = node.absolute_path
            local found = false

            -- Check if the file is already open in any tab
            for tabnr = 1, vim.fn.tabpagenr('$') do
                vim.api.nvim_set_current_tabpage(tabnr)
                for _, buf in ipairs(vim.api.nvim_list_bufs()) do
                    if vim.api.nvim_buf_get_name(buf) == path then
                        -- Switch to the existing tab
                        vim.api.nvim_set_current_tabpage(tabnr)
                        vim.api.nvim_set_current_buf(buf)
                        found = true
                        break
                    end
                end
                if found then break end
            end

            if not found then
                -- Open file in a new tab
                vim.cmd('tabnew ' .. path)
            end
            -- Reopen nvim-tree
            vim.cmd('NvimTreeOpen')
        end
    end, opts('Open file in existing tab or new tab'))
  end,
})
