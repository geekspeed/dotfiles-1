require 'rubygems'
require 'awesome_print'
require 'irb/completion'

# adds readline functionality
IRB.conf[:USE_READLINE] = true
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 1000

if defined?(Wirble)
  Wirble.init
  Wirble.colorize
end
# don't save duplicates
IRB.conf[:AT_EXIT].unshift Proc.new {
    no_dups = []
    Readline::HISTORY.each_with_index { |e,i|
        begin
            no_dups << e if Readline::HISTORY[i] != Readline::HISTORY[i+1]
        rescue IndexError
        end
    }
    Readline::HISTORY.clear
    no_dups.each { |e|
        Readline::HISTORY.push e
    }
}

class Object
  def my_methods
    (self.methods - Object.methods).sort
  end
end

