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
    description: 'Integer malesuada nunc vel risus commodo.',
    long_description: 'Integer malesuada nunc vel risus commodo. Nulla aliquet porttitor lacus luctus accumsan tortor. Laoreet id donec ultrices tincidunt. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Vitae tempus quam pellentesque nec nam aliquam sem et. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Dictumst vestibulum rhoncus est pellentesque. Nunc faucibus a pellentesque sit amet porttitor eget. Quis blandit turpis cursus in. A diam maecenas sed enim ut sem. Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Purus non enim praesent elementum facilisis leo. Porttitor rhoncus dolor purus non enim praesent elementum facilisis leo. Neque convallis a cras semper auctor neque. Odio ut enim blandit volutpat maecenas volutpat blandit. Sed nisi lacus sed viverra tellus in hac.'
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
    description: 'Tortor pretium viverra suspendisse potenti nullam ac.',
    long_description: 'Tortor pretium viverra suspendisse potenti nullam ac. Quis risus sed vulputate odio ut enim. Mauris nunc congue nisi vitae suscipit. Nisl tincidunt eget nullam non nisi est. Consequat semper viverra nam libero justo laoreet sit amet cursus. Iaculis urna id volutpat lacus laoreet non curabitur gravida arcu. Enim diam vulputate ut pharetra sit amet aliquam id diam. Felis imperdiet proin fermentum leo vel orci porta non. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Erat velit scelerisque in dictum non consectetur. Est ullamcorper eget nulla facilisi etiam dignissim diam. Justo nec ultrices dui sapien eget mi proin sed. Risus viverra adipiscing at in. Ac tortor vitae purus faucibus ornare suspendisse. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Eget sit amet tellus cras adipiscing. Libero volutpat sed cras ornare. Et malesuada fames ac turpis.'
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
    description: 'Amet luctus venenatis lectus magna fringilla urna.',
    long_description: 'Amet luctus venenatis lectus magna fringilla urna. Gravida arcu ac tortor dignissim convallis aenean. Odio eu feugiat pretium nibh ipsum consequat. Volutpat consequat mauris nunc congue nisi. Congue quisque egestas diam in arcu cursus euismod quis. Egestas sed sed risus pretium quam vulputate dignissim. Pellentesque habitant morbi tristique senectus et netus. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Donec massa sapien faucibus et molestie. Duis convallis convallis tellus id interdum velit. Varius morbi enim nunc faucibus a pellentesque sit amet. Interdum consectetur libero id faucibus nisl tincidunt eget nullam non. Proin gravida hendrerit lectus a. Pellentesque sit amet porttitor eget dolor morbi non arcu. Donec adipiscing tristique risus nec feugiat. Arcu cursus vitae congue mauris rhoncus aenean vel. Tristique risus nec feugiat in fermentum posuere urna nec tincidunt.'
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
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    long_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa massa ultricies mi quis hendrerit dolor. Duis ut diam quam nulla porttitor massa id. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit. Elit sed vulputate mi sit amet mauris. Purus faucibus ornare suspendisse sed nisi lacus sed viverra. Sed elementum tempus egestas sed sed risus. Libero nunc consequat interdum varius sit amet mattis.'
  ).save
end
