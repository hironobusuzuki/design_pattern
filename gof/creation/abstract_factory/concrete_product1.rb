require './abstract_product1'
class ConcreteProduct1 < AbstractProduct1
  def hoge
    p "used:" + self.class.to_s
  end
end
