# dotfiles-puppet

> Automated personal environment setup with Puppet

## Dependencies

1. [Puppet](http://puppetlabs.com/)
2. [Git](http://git-scm.com/)

## Usage

Clone this repo:

```bash
git clone git@github.com:robatron/dotfiles-puppet.git ~/.dotfiles
```

Apply default manifests:

```bash
~/.dotfiles/apply.sh
```

Or, if on a Windows machine, apply default manifests from `CMD.exe` with:

```bat
~/.dotfiles/apply.bat
```

## References

- ["Managing your Dotfiles with Puppet"](http://dev.alexishevia.com/2013/09/managing-your-dotfiles-with-puppet.html)
- ["Environment Variables with Facter"](http://docs.puppetlabs.com/guides/faq.html#can-i-access-environment-variables-with-facter)
