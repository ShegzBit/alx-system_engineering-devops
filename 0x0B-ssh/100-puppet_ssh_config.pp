# a puppet script to configure our ssh_config file

file { '/root/.ssh/config':
  ensure  => 'file',
  owner   => 'root',
  groupt  => 'root',
  content => '# A puppeteer for my configuration file
Host *
    IdentityFile ~/.ssh/school
    PassWordAuthentication no
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes',
}
