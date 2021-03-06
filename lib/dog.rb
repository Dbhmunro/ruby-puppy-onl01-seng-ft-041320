# Add your code here
require "pry"

class Dog
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        self.save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end
    
    def self.print_all
        # binding.pry
        # @@all.map(&:name).each { |name| puts name }
        self.all.each{ |dog| puts "#{dog.name}" }
    end
end

# binding.pry
# 0