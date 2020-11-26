# PORO = Plain Old Ruby Object
class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def serialize
    # items = [
    #   {"product_id" => 1, "quantity" => 3},
    #   {"product_id" => 2, "quantity" => 2},
    # ]

    items = @items.map { |item| {"product_id" => item.product_id, "quantity" => item.quantity} }

    { "items" => items }
  end

  def add_item(product_id)
    found = @items.find { |item| item.product_id == product_id }

    if found
      found.increment!
    else
      @items << CartItem.new(product_id)
    end
  end

  def empty?
    @items.empty?
  end

  def total_price
    @items.reduce(0) { |sum, item| sum = sum + item.total_price }
  end
end