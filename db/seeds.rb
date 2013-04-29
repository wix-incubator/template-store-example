# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
templates = [
  {
    name: 'Financial Consultants',
    site_url: 'http://templatesdream.wix.com/consulting-and-co',
    description: 'A sleek and sharp HTML template that shows just how professional your firm is. Easy to edit and update. Just add your own text and images and get your business online today!',
    wix_meta_site_id: '12ed689f-70e8-e44f-3482-dbf2fcd41b49',
    image_url: 'Financial Consultants.png',
    price: 15
  },
  {
    name: 'Professional Photographer',
    site_url: 'http://templatesdream.wix.com/john-photographer',
    description: 'Get your photography business online today! This HTML template is super easy to edit, just add your own images and text and show the world your talent.',
    wix_meta_site_id: '12ed68dc-09e2-6e21-0cdd-7ee2323cf996',
    image_url: 'Professional Photographer.png',
    price: 12
  },
  {
    name: 'Luxury Yachts',
    site_url: 'http://templatesdream.wix.com/luxury-yacht-free',
    description: 'Improving your online presence is a breeze with this beautiful HTML template. Easy to customize and update whenever you need.',
    wix_meta_site_id: '12ed68de-b456-6fa8-2a07-01330e47df9b',
    image_url: 'Luxury Yachts.png',
    price: 12
  },
  {
    name: 'Fashion & Style',
    site_url: 'http://templatesdream.wix.com/fashion-boutique',
    description: 'Get in style and start selling your products with this simple, chic HTML Ecommerce template.',
    wix_meta_site_id: '12ed68a7-a0c0-76fb-5382-7c5648f90a5e',
    image_url: 'Fashion & Style.png',
    note: "To activate the shopping cart for this template, you'll need to purchase the eCommerce premium package in Wix. For prices and more info <a target='_blank' href='http://www.wix.com/upgrade/website'>click here</a>",
    price: 20
  },
  {
    name: 'Car Dealer',
    site_url: 'http://templatesdream.wix.com/automike',
    description: 'Showcase your business online with this stylish HTML template. An excellent site for displaying your inventory and it\'s so easy to edit!',
    wix_meta_site_id: '12ed6890-bee9-8dff-2606-782b35b200c1',
    image_url: 'Car Dealer.png',
    price: 12
  },
  {
    name: 'The Author',
    site_url: 'http://templatesdream.wix.com/karen-parker-author',
    description: 'A thrilling HTML template that lets you show off your talents to the world. Just add your own text and images and get your portfolio online.',
    wix_meta_site_id: '12ed68d4-eacb-dccd-d97f-321fe0444e00',
    image_url: 'The Author.png',
    price: 12
  },
  {
    name: 'Fresh Meals',
    site_url: 'http://templatesdream.wix.com/cook-to-go',
    description: 'A sumptuous and delectable site that will leave your visitors drooling. This HTML template is great for displaying your images and includes plenty of room for text.',
    wix_meta_site_id: '12ed68f0-6956-a11b-5382-7c5648f90a5e',
    image_url: 'Fresh Meals.png',
    price: 12
  },
  {
    name: 'Law Firm',
    site_url: 'http://templatesdream.wix.com/lawyers-and-co',
    description: 'Let your legal practice grow with this strong HTML template. Just add your own text and images and start building your online presence today.',
    wix_meta_site_id: '12ed68af-06fc-e917-5382-7c5648f90a5e',
    image_url: 'Law Firm.png',
    price: 15
  },
  {
    name: 'Certified Accountant',
    site_url: 'http://templatesdream.wix.com/accountant-site',
    description: 'Create an HTML website that is high on content but still beautifully designed. Just add your own text and images and get your business online today!',
    wix_meta_site_id: '12ed68cb-4877-513c-2a07-01330e47df9b',
    image_url: 'Certified Accountant.png',
    price: 15
  },
  {
    name: 'Personal Trainers',
    site_url: 'http://templatesdream.wix.com/the-shapers',
    description: 'Get the website your business deserves with this powerful HTML template and inspire your visitors. It\'s easy to edit, meaning your business can be online today!',
    wix_meta_site_id: '12ed68f6-061a-9cd7-2606-782b35b200c1',
    image_url: 'Personal Trainers.png',
    price: 12
  },
  {
    name: 'Cabin in the Woods',
    site_url: 'http://templatesdream.wix.com/cabins-tree',
    description: 'Start your online presence with this welcoming HTML template. It\'s easy to edit and personalize, simply add your own text and images and you\'re done.',
    wix_meta_site_id: '12ed68fe-be9b-5322-2606-782b35b200c1',
    image_url: 'Cabin in the Woods.png',
    price: 12
  },
  {
    name: 'Singer Songwriter',
    site_url: 'http://templatesdream.wix.com/musician',
    description: 'Get your music online with this striking HTML template. Simply upload your tracks, images and text and let your visitors hear how amazing you are.',
    wix_meta_site_id: '12ed68eb-a3f7-3d5f-3482-dbf2fcd41b49',
    image_url: 'Singer Songwriter.png',
    price: 12
  },
]

templates_config = Rails.root.join('config','templates.yml')
if File.exists?(templates_config)
  templates = YAML.load_file(templates_config)
end

templates.each do |template_raw|
  Template.create(template_raw)
end
