REM Puppet-apply script for Windows

SET DIR=%~dp0
SET FACTER_HOME=%HOME%

puppet apply --modulepath=%DIR%/modules %DIR%/manifests/default.pp
