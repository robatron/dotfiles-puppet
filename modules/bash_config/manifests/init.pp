class bash_config {
    file { "$home/.profile":
        ensure => "link",
        mode => 644,
        target => "$module_path/bash_config/files/.profile"
    }
}
