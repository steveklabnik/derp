require 'bundler'
Bundler::GemHelper.install_tasks

task :test do
  Dir["test/**_test.rb"].each{|r| require_relative r }
end
