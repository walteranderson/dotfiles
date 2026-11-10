return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install {
      'javascript',
      'typescript',
      'svelte',
      'css',
      'html',
      'query',
      'scss', -- scss also highlights postcss code
      'go',
      'lua',
      'python',
      'tsx',
      'vimdoc',
      'vim',
      'bash',
    }

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        -- Starts highlighting only if a parser exists for this filetype.
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
