#encoding: utf-8

module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end
    def start(secret)
      @output.puts '欢迎来玩破译密码的游戏！'
      @output.puts '请从1-6的数字中选择4个作为猜想答案：'
    end
    def guess(guess)
    end
  end
end