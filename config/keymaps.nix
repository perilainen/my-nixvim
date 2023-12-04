{
    keymaps = [
      {
        mode = "n";
        key = "<esc>";
        options.silent = true;
        action = "<CMD>noh<CR>";
      }
      {
        mode = "n";
        key = "<leader>ln";
        options.silent = true;
        action = "<cmd>Navbuddy<CR>";
      }
      {
        mode = "n";
        key = "<leader>la";
        options.silent = true;
        action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      }
      {
        mode = "n";
        key = "<leader>lf";
        options.silent = true;
        action = "<cmd>lua vim.lsp.buf.format()<CR>";
      }
      {
        mode = "n";
        key = "<leader>ss";
        options.silent = true;
        action = "<cmd>:Telescope<CR>";
      }
      {
        mode = "n";
        key = "<leader>gg";
        options.silent = true;
        action = "<cmd>LazyGit<CR>";
      }
      {
        mode = "n";
        key = "<leader>e";
        options.silent = true;
        action = "<cmd>NvimTreeToggle<CR>";
      }
    ];

}
