class OrangeGrove
  attr_accessor :tree

  def initialize
    tree_count = 0
    grove = []
      (1..10).collect do |n|
        puts n + tree_count
        grove.push(OrangeTree.new)
      end
  end
end

  class OrangeTree

    

    attr_accessor :age

    def initialize
      @age = 1
    end

    def height_of_tree_per_year
      @height = @age * 10
      puts "The height of this tree is: #{@height} inches"
    end

    def count_oranges
      @count = @age * 15
    end

    def produce_fruit_or_not
      if @age >=20
        puts "your tree is old enough to produce fruit - there are this many fruit on the tree: #{@count} "
      else
        puts "your tree is less than 20 years old  - the tree is too young to bare fruit."
      end
    end

    def pickAnOrange
    how_many = count_oranges - 1
      if how_many < 1
        puts "Nothing to pick here"
      else
        puts "I ate an orange from your tree and it tastes so yummmmy! There are now #{how_many} oranges left on your tree."

      end
    end

    def after_a_year
       @age +=1
       count_oranges == 0
    end

  end

  c = OrangeTree.new
  OrangeGrove.new
    while c.age < 29
      puts "the age of your tree is: #{c.age} years old"
      c.height_of_tree_per_year
      #c.die_tree
      c.produce_fruit_or_not
      c.count_oranges
      c.pickAnOrange
      c.after_a_year
      puts "*" * 100
    end
