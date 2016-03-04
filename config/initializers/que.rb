Que.wake_interval = 10.seconds
Que.mode = (ENV['QUE_MODE'] || :async).to_sym
Que.worker_count = (ENV['WORKER_COUNT'] || 1)
