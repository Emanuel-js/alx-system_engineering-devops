# configuration file to connect to a server without typing password
file_line{'disable_password_login':
    path   => '/etc/ssh/ssh_config',
    line   => 'PasswordAuthentication no',
    replace => true,
}

file_line{'use new private key':
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/holberton',
    replace => true,
}
