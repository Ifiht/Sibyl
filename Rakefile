task default: [:build, :install, :test, :clean]

task :clean do
  spec = Gem::Specification::load("sibyl.gemspec")
  if File.exist?("Gemfile.lock")
    f = File.open("Gemfile.lock", "r")
    File.delete(f)
  end
  if File.exist?("#{spec.name}-#{spec.version}.gem")
    f = File.open("#{spec.name}-#{spec.version}.gem", "r")
    File.delete(f)
  end
end #task

task :build do
  sh "gem build sibyl.gemspec"
end #task

task :install do
  sh "gem install sibyl"
end #task

task :test do
  ruby "test/data_struct_tests.rb"
end #task
