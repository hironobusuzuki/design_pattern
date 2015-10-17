require './abstract_product2'
class ConcreteProduct2 < AbstractProduct2
  def foo
    p "used:" + self.class.to_s
  end
end
