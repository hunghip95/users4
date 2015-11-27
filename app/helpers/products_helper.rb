module ProductsHelper
  def getid(product)
    product[:id]=product.id
  end
  def phoneof
    @phoneof ||= Product.find_by(id: product[:id])
  end
end
