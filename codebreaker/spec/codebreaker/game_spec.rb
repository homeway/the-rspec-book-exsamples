#encoding: utf-8
require 'spec_helper'

module Codebreaker
  describe Game do
    let(:output){ double('output').as_null_object }
    let(:game){ Game.new(output) }

    describe "#start" do
      it "发出欢迎消息" do
        output.should_receive(:puts).with('欢迎来玩破译密码的游戏！')
        game.start('1234')
      end

      it "游戏提示" do
        output.should_receive(:puts).with('请从1-6的数字中选择4个作为猜想答案：')
        game.start('1234')
      end
    end

    describe "#guess" do
      context "没有匹配" do
        it "返回mark为空字符串''" do
          game.start('1234')
          output.should_receive(:puts).with('')
          game.guess('5555')
        end
      end
      context "1个匹配" do
        it "返回mark为'-'" do
          game.start('1234')
          output.should_receive(:puts).with('-')
          game.guess('2555')
        end
      end
      context "1个匹配" do
        it "返回mark为'+'" do
          game.start('1234')
          output.should_receive(:puts).with('+')
          game.guess('1555')
        end
      end
    end
  end
end
