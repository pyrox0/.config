local neogit = require('neogit')

neogit.setup {
    disable_insert_on_commit = false,
    integrations = {
        diffview = true,
    },
    disable_builtin_notifications = true,
}
