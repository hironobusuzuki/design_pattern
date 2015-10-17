Kernel.require "./client"
Kernel.require "./some_singleton"
class Main
  def main
    begin
      SomeSingleton.new
    rescue => e
      p "rescued!! : " +  e.to_s 
    end

    client = Client.new
    instance_a = SomeSingleton.instance
    instance_b = SomeSingleton.instance
    if client.use(instance_a) == client.use(instance_b)
      p "object_id is equal [#{client.use(instance_a)}]"
    else
      p "object_id is not equal [#{client.use(instance_a)}][#{client.use(instance_b)}]"
    end
  end
end

if __FILE__ == $0
  Main.new.main
end
