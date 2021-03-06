#encoding: utf-8

class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

假如(/^我还没开始$/) do
end

当(/^我开始新的游戏$/) do
  game = Codebreaker::Game.new(output)
  game.start '1234'
end

那么(/^我应当看到"(.*?)"这样的欢迎辞$/) do |message|
  output.messages.should include (message)
end

那么(/^我应当看到"(.*?)"的提示$/) do |message|
  output.messages.should include (message)
end

假如(/^密码是"(.*?)"$/) do |secret|
  @game = Codebreaker::Game.new(output)
  @game.start(secret)
end

当(/^我提交"(.*?)"$/) do |guess|
  @game.guess(guess)
end

那么(/^我应当得到的反馈是"(.*?)"$/) do |mark|
  output.messages.should include(mark)
end
