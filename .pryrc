# switch default editor for pry to sublime text
Pry.config.editor = "subl"

# === CUSTOM PROMPT ===
# This prompt shows the ruby version (useful for RVM)
Pry.prompt = [proc { |obj, nest_level, _| "pry #{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level, _| "pry #{RUBY_VERSION} (#{obj}):#{nest_level} * " }]


# use awesome print for all objects in pry
begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts "=> #{ap value}" }
rescue LoadError => err
  puts "=> Unable to load awesome_print, please type 'gem install awesome_print' or 'sudo gem install awesome_print'. (this message is coming from your ~./pryrc file)"
end