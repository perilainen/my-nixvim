{
    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
      terminalColors = true;

      integrations = {
        barbar = true;
        gitsigns = true;
        indent_blankline = {
          enabled = true;
          colored_indent_levels = true;
        };
        lsp_trouble = true;
        #  mini = true;
        native_lsp.enabled = true;
        navic.enabled = true;
        nvimtree = true;
        treesitter = true;
        treesitter_context = true;
        ts_rainbow2 = true;
      };

      styles = {
        booleans = ["bold" "italic"];
        conditionals = ["bold"];
        functions = ["bold"];
        keywords = ["italic"];
        loops = ["bold"];
        operators = ["bold"];
        properties = ["italic"];
      };
    };

}
