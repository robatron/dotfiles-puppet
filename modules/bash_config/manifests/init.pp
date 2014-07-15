class bash_config {
  file { "$home/.bashrc":
    replace => "no",
    owner => "$id",
    group => "$id",
    mode => 644,
    source => "puppet:///modules/bash_config/.profile",
  }
}
