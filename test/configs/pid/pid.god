God.watch do |w|
  w.name = 'simple_server'
  w.start = File.join(File.dirname(__FILE__), *%w[simple_server.rb])
  w.stop = ''
  w.interval = 5
  w.grace = 2
  
  w.start_if do |start|
    start.condition(:process_running) do |c|
      c.running = false
    end
  end
end