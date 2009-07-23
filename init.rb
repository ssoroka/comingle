current_dir = File.dirname(__FILE__)
mingle_dir = File.join(current_dir, %w(app resources mingle))

require File.join(mingle_dir, 'base.rb')
Dir[File.join(mingle_dir, '*.rb')].each{|d|
  require d
}