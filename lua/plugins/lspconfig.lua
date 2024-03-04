return {
  { -- configure LSPs
    "neovim/nvim-lspconfig",
    init = function()
      require("lspconfig").yamlls.setup({
        settings = {
          redhat = {
            telemetry = {
              enabled = false,
            },
          },
          yaml = {
            schemas = {
              ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
              ["https://json.schemastore.org/pre-commit-config.json"] = "/.pre-commit-config.*",
              ["https://json.schemastore.org/catalog-info.json"] = ".backstage/*.yaml",
              ["https://raw.githubusercontent.com/iterative/dvcyaml-schema/master/schema.json"] = "**/dvc.yaml",
              ["https://json.schemastore.org/swagger-2.0.json"] = "**/swagger.yaml",
              ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "**/docker-compose*.{yml,yaml}",
            },
          },
        },
      })
    end,
  },
}
