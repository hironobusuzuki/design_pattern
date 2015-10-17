require './concrete_product2'
class ModifiedConcreteProduct2 < ConcreteProduct2
  def foo
    p "used:" + self.class.to_s
  end
end
