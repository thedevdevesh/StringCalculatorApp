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
    end
end
