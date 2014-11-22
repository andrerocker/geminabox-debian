timeout 600
preload_app true

working_directory File.expand_path("../../", __FILE__)

listen "127.0.0.1:9292", :backlog => 64
listen File.expand_path("./tmp/sockets/unicorn.sock")

pid "tmp/pids/unicorn.pid"
stderr_path "log/unicorn.log"
stdout_path "log/unicorn.log"

worker_processes ENV["RACK_ENV"].eql?("production") ? 6 : 8

before_fork do |server, worker|
   old_pid = "#{server.config[:pid]}.oldbin"
   if old_pid != server.pid
     begin
       sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
       Process.kill(sig, File.read(old_pid).to_i)
     rescue Errno::ENOENT, Errno::ESRCH
     end
   end
end
