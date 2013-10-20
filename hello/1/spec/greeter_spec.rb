#encoding: utf-8

class RSpecGreeter
  def greet
    "RSpec开始了!"
  end
end

describe "RSpec开始了!" do
  it "当接收到greet()消息时，应该显示'RSpec开始了!'" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == 'RSpec开始了!'
  end
end