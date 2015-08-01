worker_processes 2
working_directory "/home/chasov/www/moreturov/"

preload_app true

timeout 30

listen "/home/chasov/www/moreturov/tmp/sockets/unicorn.sock", :backlog => 64

pid "/home/chasov/www/moreturov/tmp/pids/unicorn.pid"

stderr_path "/home/chasov/www/moreturov/log/unicorn.stderr.log"
stdout_path "/home/chasov/www/moreturov/log/unicorn.stdout.log"

before_fork do |server, worker|
    defined?(ActiveRecord::Base) and
        ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
    defined?(ActiveRecord::Base) and
        ActiveRecord::Base.establish_connection
end
