require "night_vision/version"

module NightVision
  DIVIDER = "------------------------------------------------"
  def self.before(*classes)
    classes.each do |klass|
      klass.instance_methods.each do |method|
        m = klass.instance_method(method)
        klass.send(:define_method, method) do |*args, &block|
          puts DIVIDER
          puts "Invoking #{method}"
          puts "Actual arguments are: #{args}"
          puts DIVIDER
          m.bind(self).(*args, &block)
        end
      end
    end
  end
end