local rust_format_group = vim.api.nvim_create_augroup("RustFormat", { clear = true })
local python_format_group = vim.api.nvim_create_augroup("PythonFormat", { clear = true })

-- Python LSP Setup with Ruff format-on-save using new vim.lsp.config API
vim.lsp.config.ruff = {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile" },
	on_attach = function(client, bufnr)
		-- Format on save for Python using Ruff
		vim.api.nvim_clear_autocmds({ group = python_format_group, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = python_format_group,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.code_action({
					context = {
						only = { "source.fixAll.ruff" },
					},
					apply = true,
				})
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
}

-- Enable ruff LSP
vim.lsp.enable("ruff")

return {
	{
		"mrcjkb/rustaceanvim",
		version = "^4",
		ft = { "rust" },
		config = function()
			vim.g.rustaceanvim = {
				server = {
					on_attach = function(client, bufnr)
						vim.lsp.inlay_hint.enable()

						-- Format on save for Rust
						vim.api.nvim_clear_autocmds({ group = rust_format_group, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = rust_format_group,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})
					end,
				},
			}
		end,
	},
	-- crates
	{
		"saecki/crates.nvim",
		version = "v0.3.0",
		lazy = true,
		ft = { "rust", "toml" },
		event = { "BufRead", "BufReadPre", "BufNewFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				popup = {},
			})
		end,
	},
}
