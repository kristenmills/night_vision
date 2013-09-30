require "night_vision/version"

module NightVision
  DIVIDER = "------------------------------------------------"
  def self.goggles(*classes)
    classes.each do |klass|
      klass.instance_methods.each do |method|
        m = klass.instance_method(method)
        klass.send(:define_method, method) do |*args, &block|
          puts DIVIDER
          puts "Invoking #{method}"
          puts "Actual arguments are: #{args}"
          puts DIVIDER
          val = m.bind(self).(*args, &block)
          puts DIVIDER
          puts "Returning from #{method}"
          puts "Return value is: #{val}"
          puts DIVIDER
          val
        end
      end
    end
  end
end