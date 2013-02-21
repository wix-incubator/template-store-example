# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {
    name: 'Financial Consultants',
    site_url: 'http://designteamnew.wix.com/consulting-and-co-',
    description: 'A sleek and sharp HTML template that shows just how professional your firm is. Easy to edit and update. Just add your own text and images and get your business online today!',
    wix_meta_site_id: '12d31464-b76a-2235-350d-17dc301799ae',
    image_url: 'Financial Consultants.png',
    price: 15
  },
  {
    name: 'Professional Photographer',
    site_url: 'http://designteamnew.wix.com/john-photographer',
    description: 'Get your photography business online today! This HTML template is super easy to edit, just add your own images and text and show the world your talent.',
    wix_meta_site_id: '12d5c86a-52bf-56fe-1dfb-3cb9e533b7dc',
    image_url: 'Professional Photographer.png',
    price: 12
  },
  {
    name: 'Luxury Yachts',
    site_url: 'http://designteamnew.wix.com/luxury-yacht-free',
    description: 'Improving your online presence is a breeze with this beautiful HTML template. Easy to customize and update whenever you need.',
    wix_meta_site_id: '12d62180-960a-bfe2-fd8a-8a92e0284214',
    image_url: 'Luxury Yachts.png',
    price: 12
  },
  {
    name: 'Fashion & Style',
    site_url: 'http://talen19.wix.com/fashion-boutique',
    description: 'Get in style and start selling your products with this simple, chic HTML Ecommerce template.',
    wix_meta_site_id: '12d268e1-731c-b2f9-736c-d6a0a98ed8e2',
    image_url: 'Fashion & Style.png',
    price: 20
  },
  {
    name: 'Car Dealer',
    site_url: 'http://talen19.wix.com/automike',
    description: 'Showcase your business online with this stylish HTML template. An excellent site for displaying your inventory and it\'s so easy to edit!',
    wix_meta_site_id: '12d26066-12ec-3470-cc3d-5d4fc8e807fa',
    image_url: 'Car Dealer.png',
    price: 12
  },
  {
    name: 'The Author',
    site_url: 'http://talen19.wix.com/karen-parker-author',
    description: 'A thrilling HTML template that lets you show off your talents to the world. Just add your own text and images and get your portfolio online.',
    wix_meta_site_id: '12d177f7-95b3-f71f-9053-8117886e3810',
    image_url: 'The Author.png',
    price: 12
  },
  {
    name: 'Fresh Meals',
    site_url: 'http://talen19.wix.com/cook-to-go',
    description: 'A sumptuous and delectable site that will leave your visitors drooling. This HTML template is great for displaying your images and includes plenty of room for text.',
    wix_meta_site_id: '12d176da-87b3-d43a-9053-8117886e3810',
    image_url: 'Fresh Meals.png',
    price: 12
  },
  {
    name: 'Law Firm',
    site_url: 'http://talen19.wix.com/lawyers-and-co',
    description: 'Let your legal practice grow with this strong HTML template. Just add your own text and images and start building your online presence today.',
    wix_meta_site_id: '12d12392-4237-41c3-82df-ca18e9bf9307',
    image_url: 'Law Firm.png',
    price: 15
  },
  {
    name: 'Certified Accountant',
    site_url: 'http://talen19.wix.com/accountant-site-liat',
    description: 'Create an HTML website that is high on content but still beautifully designed. Just add your own text and images and get your business online today!',
    wix_meta_site_id: '12d13b81-cc4a-3c24-eeb2-03c9e5cf28a9',
    image_url: 'Certified Accountant.png',
    price: 15
  },
  {
    name: 'Personal Trainers',
    site_url: 'http://talen19.wix.com/the-shapers',
    description: 'Get the website your business deserves with this powerful HTML template and inspire your visitors. It\'s easy to edit, meaning your business can be online today!',
    wix_meta_site_id: '12d13ed0-e278-fa81-43d3-11054598b0f0',
    image_url: 'Personal Trainers.png',
    price: 12
  },
  {
    name: 'Cabin in the Woods',
    site_url: 'http://talen19.wix.com/cabins-tree',
    description: 'Start your online presence with this welcoming HTML template. It\'s easy to edit and personalize, simply add your own text and images and you\'re done.',
    wix_meta_site_id: '12d18043-33e9-69af-cdc7-7a116ea29d08',
    image_url: 'Cabin in the Woods.png',
    price: 12
  },
  {
    name: 'Singer Songwriter',
    site_url: 'http://designteamnew.wix.com/musician',
    description: 'Get your music online with this striking HTML template. Simply upload your tracks, images and text and let your visitors hear how amazing you are.',
    wix_meta_site_id: '12d3a672-34b6-1dd0-4018-d33586f74c6b',
    image_url: 'Singer Songwriter.png',
    price: 12
  },
].each do |template_raw|
  Template.create(template_raw)
end
