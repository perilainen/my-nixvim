{
    plugins = {
      project-nvim.enable = true;
      # alpha.enable = true;
      gitsigns.enable = true;
      gitblame.enable = true;
      gitmessenger.enable = true;
      navbuddy = {
        enable = true;
        lsp.autoAttach = true;
      };
      luasnip.enable = true;
      lualine = {
        enable = true;
        sections = {
          lualine_x = ["lsp_progress" "encoding"];
        };
      };
      toggleterm = {
        enable = true;
        openMapping = "<C-\\>";
        direction = "float";
      };

      oil.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp_luasnip.enable = true;
      nvim-cmp = {
        enable = true;
        snippet.expand = "luasnip";
        formatting = {
          format = ''
            require("lspkind").cmp_format({
                    mode="symbol",
                    maxwidth = 50,
                    ellipsis_char = "..."
            })
          '';
        };
      };

      nvim-cmp.mappingPresets = ["insert"];

      nvim-cmp.mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-j>" = "cmp.mapping.scroll_docs(4)";
        "<C-k>" = "cmp.mapping.scroll_docs(-4)";
        "<Tab>" = {
          modes = ["i" "s"];
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              elseif check_backspace() then
                fallback()
              else
                fallback()
              end
            end
          '';
        };
      };
      nvim-cmp.sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "buffer";}
        {name = "copilot";}
      ];
      # nvim-cmp.window.documentation.maxHeight = "400";
      # nvim-cmp.window.documentation.maxWidth = "40";
      # copilot-cmp.enable = true;
      copilot-lua.enable = true;
      # noice.enable = true;
      # notify= {
      # enable = true;
      # };
      which-key.enable = true;
      comment-nvim.enable = true;
      emmet.enable = true;
      nvim-autopairs.enable = true;
      nvim-lightbulb.enable = true;
      todo-comments.enable = true;

      barbar = {
        enable = true;
        autoHide = true;
        icons.diagnostics = {
          error.enable = true;
          hint.enable = true;
          info.enable = true;
          warn.enable = true;
        };
      };

      # coq-nvim = {
      #   enable = true;
      #   autoStart = "shut-up";
      #   installArtifacts = true;
      #   recommendedKeymaps = true;
      # };

      lsp-format = {enable = true;};
      lsp = {
        enable = true;
        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>lk" = "goto_prev";
            "<leader>lj" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<leader>lr" = "rename";
          };
        };

        # onAttach = ''
        #   if client.supports_method('textDocument/codeLens') then
        #     require('virtualtypes').attach(client, bufnr)
        #   end
        #
        #   if client.server_capabilities.documentSymbolProvider then
        #       require('nvim-navic').attach(client, bufnr)
        #       require('nvim-navbuddy').attach(client, bufnr)
        #   end
        #
        #   if client.supports_method('textDocument/formatting') then
        #     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        #     vim.api.nvim_create_autocmd('BufWritePre', {
        #       group = augroup,
        #       buffer = bufnr,
        #       callback = function()
        #         if client.name == 'null-ls' then
        #           local util = require 'vim.lsp.util'
        #           local params = util.make_formatting_params({})
        #           client.request('textDocument/formatting', params, nil, bufnr)
        #         end
        #         vim.lsp.buf.fmtrmat({bufnr = bufnr})
        #         require('mini.trailspace').trim()
        #         require('mini.trailspace').trim_last_lines()
        #       end,
        #     })
        #
        #   end
        # '';

        servers = {
          eslint.enable = true;
          lua-ls.enable = true;
          nixd.enable = true;
          nil_ls.enable = true;
          tailwindcss.enable = true;
          tsserver.enable = true;
          gopls.enable = true;
          html.enable = true;
          yamlls.enable = true;
          rust-analyzer = {
            enable = true;
            settings = {
              imports.granularity = {
                enforce = true;
                group = "item";
              };
              files.excludeDirs = [".direnv"];
            };

            extraOptions.settings = {
              cargo.allFeatures = true;
              files.excludeDirs = [".direnv"];
              unstable_features = true;
              #   tab_spaces = 2;
              #   reorder_impl_items = true;
              #   indent_style = "Block";
              #   imports_layout = "HorizontalVertical";
              #   group_imports = "StdExternalCrate";
              normalize_comments = true;
                format_code_in_doc_comments = true;
            };
          };
        };
      };

      none-ls = {
        enable = true;
        sources.formatting = {
          alejandra.enable = true;
          # nixfmt.enable = true;
          stylua.enable = true;
        };
      };

      # nvim-jdtls = {
      #   enable = true;
      #   data = "/Users/marshall/.cache/jdt-language-server/workspace";
      #   configuration = "/Users/marshall/.cache/jdt-language-server/config";
      # };

      nvim-tree = {
        enable = true;
        git.enable = true;
        disableNetrw = true;
        respectBufCwd = true;
        reloadOnBufenter = true;
        syncRootWithCwd = true;
        updateFocusedFile.enable = true;

        diagnostics = {
          enable = true;
          icons = {
            hint = "";
            info = "";
            warning = "";
            error = "";
          };
        };
      };

      telescope = {
        enable = true;
        extensions.fzf-native.enable = true;
        extraOptions.defaults.layout_config.vertical.height = 0.5;
        keymaps = {
          "<leader>st" = "live_grep";
          "<leader>sf" = "find_files";
          "<leader>sb" = "buffers";
        };
      };

      treesitter = {
        enable = true;
        nixGrammars = true;
      };
    };

}
