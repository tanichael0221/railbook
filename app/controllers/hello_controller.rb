# coding: utf-8

class HelloController < ApplicationController
  def index
    render plain: 'Hello, world!'
  end

  def view 
    @msg = 'hello, world!'
  end
end
