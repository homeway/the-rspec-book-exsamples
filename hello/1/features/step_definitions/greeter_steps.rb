#encoding: utf-8
class CucumberGreeter
  def greet
    'Cucumber你好！'
  end
end

假如(/^有一个greeter$/) do
  @greeter = CucumberGreeter.new
end

当(/^我向他发送greet消息$/) do
  @message = @greeter.greet
end

那么(/^我应当看到"(.*?)"$/) do |greeting|
  @message.should == greeting
end