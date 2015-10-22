#\ -p 7398 -o 0.0.0.0

$:.push(File.dirname(__FILE__))

require 'git_webhook_r10k'

run Git::Webhook::R10K

