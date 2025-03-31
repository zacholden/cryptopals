# frozen_string_literal: true
require 'base64'

module Crypto
  module_function

  def hex_to_base64(hex)
    str = hex.chars.each_slice(2).reduce("") { |acc, arr| acc + arr.join("").to_i(16).chr }
    Base64.strict_encode64(str)
  end

  def fixed_xor(left, right)
    xor = left.to_i(16) ^ right.to_i(16)
    xor.to_s(16)
  end
end
