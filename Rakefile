# frozen_string_literal: true

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rake/testtask'

Rake::TestTask.new do |task|
  task.pattern = '**/*_tests.rb'
end

desc 'Default task'
task default: %w[rubocop test]