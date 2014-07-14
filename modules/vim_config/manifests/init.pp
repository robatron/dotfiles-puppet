class vim_config {
  file { "$home/.vimrc":
    owner => "$id",
    group => "$id",
    mode => 644,
    source => "puppet:///modules/vim_config/.vimrc",
  }
}
