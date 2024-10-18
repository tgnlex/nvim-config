local status_ok, neotest = pcall(require, "nvim-neotest/neotest")
if not status_ok then 
  return
end
use({
  neotest, requires = {
   'nvim-neotest/neotest-jest',
   "nvim-neotest/neotest-vitest",
  }
}).setup({
  adapters = {
    require('neotest-jest')({
        jestCommand = "npm test --",
        jestConfigFile = {"jest.config.js", "jest.config.ts", "jest.config.mjs", "jest.config.cjs", "jest.config.cts", "jest.config.mts", "jest.config.json"},
        env = { CI = true},
				jest_test_discovery = false,
        cwd = function(path)
				  return vim.fn.getcwd()
        end,
    }),
    require("neotest-vitest")
  }
})
