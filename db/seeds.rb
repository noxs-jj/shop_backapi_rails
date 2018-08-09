# frozen_string_literal: true

if Product.all.count.zero?
  Product.new(
    name: 'whale',
    price: 13.62,
    images_preview_url: 'http://files.noxs.net/shop_railsapi/products/001/preview.jpg',
    images_caroussel: [
      'http://files.noxs.net/shop_railsapi/products/001/car_01.jpg',
      'http://files.noxs.net/shop_railsapi/products/001/car_02.jpg',
      'http://files.noxs.net/shop_railsapi/products/001/car_03.jpg'
    ],
    description: '',
    long_description: ''
  ).save

  Product.new(
    name: 'boar',
    price: 33.02,
    images_preview_url: 'http://files.noxs.net/shop_railsapi/products/002/preview.jpg',
    images_caroussel: [
      'http://files.noxs.net/shop_railsapi/products/002/car_01.jpg',
      'http://files.noxs.net/shop_railsapi/products/002/car_02.jpg',
      'http://files.noxs.net/shop_railsapi/products/002/car_03.jpg'
    ],
    description: '',
    long_description: ''
  ).save

  Product.new(
    name: 'peccary',
    price: 256.42,
    images_preview_url: 'http://files.noxs.net/shop_railsapi/products/003/preview.jpg',
    images_caroussel: [
      'http://files.noxs.net/shop_railsapi/products/003/car_01.jpg',
      'http://files.noxs.net/shop_railsapi/products/003/car_02.jpg',
      'http://files.noxs.net/shop_railsapi/products/003/car_03.jpg'
    ],
    description: '',
    long_description: ''
  ).save

  Product.new(
    name: 'snake',
    price: 1337.85,
    images_preview_url: 'http://files.noxs.net/shop_railsapi/products/004/preview.jpg',
    images_caroussel: [
      'http://files.noxs.net/shop_railsapi/products/004/car_01.jpg',
      'http://files.noxs.net/shop_railsapi/products/004/car_02.jpg',
      'http://files.noxs.net/shop_railsapi/products/004/car_03.jpg'
    ],
    description: '',
    long_description: ''
  ).save
end
