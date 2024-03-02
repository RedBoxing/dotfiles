local lspconfig = require('lspconfig')

lspconfig.intelephense.setup({
  settings = {
    intelephense = {
      stubs = {
        "bcmath",
        "bz2",
        "calendar",
        "Core",
        "curl",
        "zip",
        "zlib",
        "wordpress",
        "woocommerce",
        "acf-pro",
        "wordpress-globals",
        "wp-cli",
        "genesis",
        "polylang"
      },
      environment = {
        includePaths = '/home/redboxing/.composer/vendor/php-stubs§'
      },
      files = {
        maxSize = 5000000
      };
    };
  }
});
