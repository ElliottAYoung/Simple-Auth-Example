server '34.213.53.185', user: 'deploy', roles: %w{web app db}
set :puma_bind, 'tcp://0.0.0.0:9294'
