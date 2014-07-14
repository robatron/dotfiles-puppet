class git_config {
  file { "$home/.gitconfig":
    replace => "no",
    owner => "$id",
    group => "$id",
    mode => 644,
    source => "puppet:///modules/git_config/.gitconfig",
  }
}
