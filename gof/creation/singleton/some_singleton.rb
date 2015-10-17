Kernel.require "singleton"
class SomeSingleton
  include Singleton

  def get_object_id
    self.object_id
  end
end
