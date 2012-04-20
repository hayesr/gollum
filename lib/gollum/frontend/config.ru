require "gollum/frontend/app"

gollum_path = '/var/www/ruby/docs'

disable :run

configure :development, :staging, :production do
 set :raise_errors, true
 set :show_exceptions, true
 set :dump_errors, true
 set :clean_trace, true
end

# Precious::App.set(:gollum_path, File.dirname(__FILE__))
Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:wiki_options, {})
run Precious::App