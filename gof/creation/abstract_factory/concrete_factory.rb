require './abstract_factory'
require './concrete_product1'
require './concrete_product2'

class ConcreteFactory < AbstractFactory
  def create_product1
    return ConcreteProduct1.new
  end
  def create_product2
    return ConcreteProduct2.new
  end
end
