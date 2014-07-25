class vim_config {
    file { "$home/.vimrc":
        ensure => "link",
        mode => 644,
        target => "$module_path/vim_config/files/.vimrc"
    }
}
