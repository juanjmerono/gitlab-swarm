# gitlab.rb

external_url 'http://gitlab.localtest.me'
registry_external_url 'http://registry.gitlab.localtest.me'
pages_external_url 'http://pages.gitlab.localtest.me'

nginx['listen_port']=80
nginx['listen_https']=false
#nginx['proxy_set_headers']={"X-Forwarded-Proto"=>"https","X-Forwarded-Ssl"=>"on"}
gitlab_rails['initial_shared_runners_registration_token']="1234567890"
gitlab_rails['registry_enabled']=true
registry_nginx['listen_port']=80
registry_nginx['listen_https']=false
#registry_nginx['proxy_set_headers']={"X-Forwarded-Proto"=>"https","X-Forwarded-Ssl"=>"on"}
pages_nginx['listen_port']=80
pages_nginx['listen_https']=false
#pages_nginx['proxy_set_headers']={"X-Forwarded-Proto"=>"https","X-Forwarded-Ssl"=>"on"}

# Disable services
postgresql['enable'] = false
redis['enable'] = false
prometheus['enable'] = false
postgres_exporter['enable'] = false
redis_exporter['enable'] = false

# Postgres settings
gitlab_rails['db_adapter'] = "postgresql"
gitlab_rails['db_encoding'] = "unicode"

# database service will be named "postgres" in the stack
gitlab_rails['db_host'] = "postgres" 
gitlab_rails['db_database'] = "gitlab"
gitlab_rails['db_username'] = "gitlab"
gitlab_rails['db_password'] = "gitlab"

# Redis settings
# redis service will be named "redis" in the stack
gitlab_rails['redis_host'] = "redis"
gitlab_rails['redis_password'] = "redispwd"

# Prometheus exporters
node_exporter['listen_address'] = '0.0.0.0:9100'
gitlab_monitor['listen_address'] = '0.0.0.0'
gitaly['prometheus_listen_addr'] = "0.0.0.0:9236"
gitlab_workhorse['prometheus_listen_addr'] = "0.0.0.0:9229"
