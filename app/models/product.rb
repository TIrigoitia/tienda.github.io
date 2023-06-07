class Product < ApplicationRecord
  has_one_attached :image
  has_many :order_items
 




  validates :model, presence: {message: "Debe escribir el numero de modelo"}
  validates :brand, presence: {message: "Debe escribir el modelo"}
  validates :name, presence: {message: "Debe escribir un nombre"}
  validates :price, presence: {message: "Escriba un precio para el producto"}
  validates :price, numericality: { message: "El precio ingresado contiene letras" }



  
end
