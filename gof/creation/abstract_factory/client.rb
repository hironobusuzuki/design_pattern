require './abstract_product1'
require './abstract_product2'

class Client
  def use(product1, product2)
    product1.hoge
    product2.foo
  end
end
