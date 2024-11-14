# frozen_string_literal: true

require 'test_helper'

class PaymentMethodDecoratorTest < ActiveSupport::TestCase
  def setup
    @payment_method = PaymentMethod.new.extend PaymentMethodDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
