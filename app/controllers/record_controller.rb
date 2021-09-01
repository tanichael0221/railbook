class RecordController < ApplicationController
  def ph1
    @books = Book.where("publish = ? AND price >= ?", params[:publish], params[:price])
    render "hello/list"
  end

  def offset
    @books = Book.order(published: :desc).limit(2).offset(4)
    render "hello/list"
  end

  def page
    page_size = 3
    page_num = params[:id] == nil ? 0 : params[:id].to_i - 1
    @books = Book.order(published: :desc).limit(page_size).offset(page_size * page_num)
    render "hello/list"
  end

  def groupby
    @books = Book.select('publish, AVG(price) AS avg_price').group(:publish)
  end

  def groupby2
    @books = Book.group(:publish).average(:price)
  end

end
