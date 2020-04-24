module Paramable
    module InstanceMethods
        def to_param
            self.name.downcase.gsub(' ', '-')
        end

        def initialize
            self.class.all << self
        end
    end 
end