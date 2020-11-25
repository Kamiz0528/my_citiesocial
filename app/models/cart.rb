# PORO = Plain Old Ruby Object
class Cart
  attr_reader :items

  def initialize
    @item = []
  end

  def add_item(product_id)
    @item << product_id
  end

  def empty?
    @item.empty?
  end
end