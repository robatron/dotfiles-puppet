class bash_config {
    file { "$home/.profile":
        ensure => "link",
        mode => 644,
        target => "$module_path/bash_config/files/.profile"
    }

    vcsrepo { "$home/.bash/git-aware-prompt":
        ensure   => present,
        provider => git,
        source => 'git://github.com/jimeh/git-aware-prompt.git',
        revision => 'e6b2a2fba750d4509a9e019b0b9948c12da09f79'
    }
}
