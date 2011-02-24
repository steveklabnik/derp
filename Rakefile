require 'bundler'
Bundler::GemHelper.install_tasks

task :default => :test

task :test do
  Dir["test/**_test.rb"].each{|r| require_relative r }
end
