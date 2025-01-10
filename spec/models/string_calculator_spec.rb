# frozen_string_literal: true

################################################################################
#                             STRING CALCULATOR TESTS                          #
#                                                                              #
# This tests are written by Devesh Kumar Singh                                 #
# This file contains tests for the string calculator class.                    #
# These tests are written to validate  String Calculator                       #
#                                                                              #
################################################################################


require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
    let(:calculator) { described_class.new }

    describe '#add' do
        context 'when the input is an empty string' do
            it 'returns 0' do
                expect(calculator.add('')).to eq(0)
            end
        end

        context 'when the input is a single number string' do
            it 'returns the number itself' do
                expect(calculator.add('1')).to eq(1)
            end
        end

        context 'when the input contains two numbers' do
            it 'returns their sum' do
                expect(calculator.add('1,5')).to eq(6)
            end
        end

        context 'when the input contains multiple numbers' do
            it 'returns the sum of all numbers' do
              expect(calculator.add('1,2,3,4')).to eq(10)
            end
        end

        context 'when the input contains new lines as delimiters' do
            it 'returns the sum of numbers' do
              expect(calculator.add("1\n2,3")).to eq(6)
            end
        end

        context 'when the input containe a custom delimiter' do
            it 'supports different delimiters' do
              expect(calculator.add("//;\n1;2")).to eq(3)
            end

            it 'supports another different delimiter' do
              expect(calculator.add("//\n1,2;3")).to eq(6)
            end

            it "supports another type different delimiter" do
                expect(calculator.add("//|\n1|2|3")).to eq(6)
            end
        end

        context 'when the input contains negative numbers' do
            it 'raises an exception for a single negative number' do
              expect { calculator.add("-1,2,3") }.to raise_error("negative numbers not allowed: -1")
            end

            it 'raises an exception for multiple negative numbers' do
              expect { calculator.add("1,2,-3,-4") }.to raise_error("negative numbers not allowed: -3, -4")
            end
        end
    end
end
