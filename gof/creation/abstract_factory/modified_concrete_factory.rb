require './concrete_factory'
require './modified_concrete_product1'
require './modified_concrete_product2'

class ModifiedConcreteFactory < AbstractFactory
  def create_product1
    return ModifiedConcreteProduct1.new
  end
  def create_product2
    return ModifiedConcreteProduct2.new
  end
end
