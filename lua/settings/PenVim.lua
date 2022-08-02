require("penvim").setup({
	project_env = {
		enable = true,
		config_name = '.__nvim__.lua'
	},
	rooter = {
		enable = true,
		patterns = {'.project', '.gitignore', '.gitattributes', 'pom.xml', 'gradlew'}
	},
})
