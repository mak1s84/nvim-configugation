local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/mak1s/workspace/' .. project_name

local bundles = {
  vim.fn.glob(
    "/home/mak1s/.local/share/TEST_DEBUG/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.37.0.jar")
};

vim.list_extend(bundles,
  vim.split(
    vim.fn
    .glob(
      "/home/mak1s/.local/share/TEST_DEBUG/vscode-java-test/server/*.jar"),
    "\n"))


local config = {
  cmd = {
    '/usr/lib/jvm/java-17-oracle/bin/java',
    '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044',
    '-javaagent:/home/mak1s/.local/share/nvim/lsp_servers/jdtls/lombok.jar',
    '-Xbootclasspath/a:/home/mak1s/.local/share/nvim/lsp_servers/jdtls/lombok.jar',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true', '-Dlog.level=ALL', '-Xms2g',
    '--add-modules=ALL-SYSTEM', '--add-opens',
    'java.base/java.util=ALL-UNNAMED', '--add-opens',
    'java.base/java.lang=ALL-UNNAMED', '-jar',
    '/home/mak1s/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration',
    '/home/mak1s/.local/share/nvim/lsp_servers/jdtls/config_linux',
    '-data', workspace_dir
  },
  root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew', 'pom.xml' }),

  settings = {
    java = {
      configuration = {
        runtimes = {
          { name = "JavaSE-17", path = "/usr/lib/jvm/java-17-oracle/" },
          {
            name = "JavaSE-17",
            path = "/usr/lib/jvm/java-17-oracle/",
            default = true,
          }
        }
      },
      format = {
        settings = {
          url = "/home/mak1s/.config/nvim/ftplugin/google-java-style-formatter.xml"
        }
      },
      completion = { importOrder = { "java", "javax", "org", "com" } },
      saveActions = { organizeImports = true },
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999
        }
      }
    }
  },
  on_attach = function(client, bufnr)
    if vim.api.nvim_buf_get_option(bufnr, 'bufhidden') == 'wipe' then
      return
    end
    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
    require('jdtls.dap').setup_dap_main_class_configs({ verbose = true })
  end,
  init_options = { bundles = bundles }
}



vim.cmd [[
command! -buffer TestMethod lua require('jdtls').test_nearest_method()
command! -buffer TestClass lua require('jdtls').test_class()
]]




require('jdtls').start_or_attach(config)


