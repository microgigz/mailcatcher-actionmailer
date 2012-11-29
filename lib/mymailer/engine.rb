module Mymailer
  class Engine < ::Rails::Engine
    isolate_namespace Mymailer
    mailcatcher ="mailcatcher"
	#exec(mailcatcher)
	#pid = Process.fork(exec(mailcatcher))
	# Detach the spawned process
	#Process.detach pid
	t = Thread.start do
  		system mailcatcher
	end
	t.kill
  end
end
