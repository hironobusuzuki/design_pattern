require './concrete_product1'
class ModifiedConcreteProduct1 < ConcreteProduct1
  def hoge
    p "used:" + self.class.to_s
  end
end
