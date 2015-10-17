require './concrete_factory'
require './modified_concrete_factory'
require './client'

# AbstractFactoryパターン
# 目的：
class Main
  def main
    client = Client.new
    factory = create_factory(2)

    product1 = factory.create_product1
    product2 = factory.create_product2

    client.use(product1, product2)
  end

  def create_factory(arg)
    if arg == 1
      return ConcreteFactory.new
    elsif arg == 2
      return ModifiedConcreteFactory.new
    else
      raise 'argument error'
    end
  end
end

if __FILE__ == $0
  Main.new.main  
end
