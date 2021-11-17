#using puppet to install Nginx web server
package { 'nginx':
ensure => installed,
}

file { '/var/www/html/index.html':
content => 'Holberton School',
}

file_line { 'Add redirection, 301':
path   => '/etc/nginx/sites-available/default',
ensure => 'present',
after  => 'listen 80 default_server',
line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
ensure  => running,
require => Package['nginx'],
}
