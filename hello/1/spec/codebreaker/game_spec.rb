#encoding: utf-8
require 'spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do
      before(:each) do
        @output = double('output').as_null_object
        @game = Game.new(@output)
      end
      it "发出欢迎消息" do
        @output.should_receive(:puts).with('欢迎来玩破译密码的游戏！')
        @game.start
      end

      it "游戏提示" do
        @output.should_receive(:puts).with('请从1-6的数字中选择4个作为猜想答案：')
        @game.start
      end
    end
  end
end
