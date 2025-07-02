return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        'nvim-telescope/telescope.nvim'
    },

    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup()

        -- Remaps for Harpoon
        vim.keymap.set("n", "<leader>a", function () harpoon:list():add() end, { desc = "Harpoon: Add mark to list" })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc =  "Harpoon: Show list" })
    end
}
