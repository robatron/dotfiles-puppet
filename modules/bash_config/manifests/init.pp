class bash_config {
    file { "$home/.profile":
        ensure => "link",
        mode => 644,
        target => "$dotfiles/modules/bash_config/files/.profile",
    }
}
