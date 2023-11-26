# a puppet script to configure our ssh_config file

file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  content => '# A puppeteer for my configuration file
Host *
    IdentityFile ~/.ssh/school
    PassWordAuthentication no
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes
'
}
