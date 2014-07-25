# dotfiles-puppet

> Automated personal environment setup with Puppet

1. Install [Puppet](http://puppetlabs.com/)
   ([Mac](http://docs.puppetlabs.com/guides/install_puppet/install_osx.html))

2. Install [Git](http://git-scm.com/) ([Mac](http://git-scm.com/download/mac))

3. Clone this repo:

   ```bash
   git clone git@github.com:robatron/dotfiles-puppet.git ~/.dotfiles
   ```
   
4. Install Puppet module dependencies

   ```bash
   ~/.dotfiles/install-modules.sh
   ```

4. Apply default manifests:

   ```bash
   ~/.dotfiles/apply.sh    # ( Use `apply.bat` for Windows )
   ```

## References

- ["Managing your Dotfiles with Puppet"](http://dev.alexishevia.com/2013/09/managing-your-dotfiles-with-puppet.html)
- ["Environment Variables with Facter"](http://docs.puppetlabs.com/guides/faq.html#can-i-access-environment-variables-with-facter)
