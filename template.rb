# Template created by You've Got Rails (http://www.youvegotrails.com)

gem 'rubyist-aasm'
gem 'activemerchant', :lib => 'active_merchant'
plugin 'paperclip', :git => 'git://github.com/thoughtbot/paperclip.git'
plugin 'rspec', :git => 'git://github.com/dchelimsky/rspec.git'
plugin 'rspec-rails', :git => 'git://github.com/dchelimsky/rspec-rails.git'
plugin 'authlogic', :git => 'git://github.com/binarylogic/authlogic.git'
# Run rspec generator
generate("rspec")

