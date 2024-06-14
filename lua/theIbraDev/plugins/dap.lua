return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            -- Add rustaceanvim when debugging rust next
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
            "williamboman/mason.nvim",
            -- Languages
            "leoluz/nvim-dap-go", -- GO
            {
				"mxsdev/nvim-dap-vscode-js", -- JS NODE
				dependencies = { "mfussenegger/nvim-dap" },
				config = function() end,
			},
			{
				"microsoft/vscode-js-debug", -- JS
				build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
			},
			-- {
			-- 	"firefox-devtools/vscode-firefox-debug.git",
			-- 	build = "npm install --legacy-pper-deps && npx gulp adapter.bundle.js ## mv dist out",
			-- },
        },

        config = function()
            require("theIbraDev.configs.dap")
        end,
    },
}
