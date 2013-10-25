#encoding: utf-8

module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end
    def start(secret)
      @secret = secret
      @output.puts '欢迎来玩破译密码的游戏！'
      @output.puts '请从1-6的数字中选择4个作为猜想答案：'
    end
    def guess(guess)
      mark1, mark2 = '', ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark1 << '+'
        elsif number_match?(guess, index)
          mark2 << '-'
        end
      end
      @output.puts mark1 +mark2
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end