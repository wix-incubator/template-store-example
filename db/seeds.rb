# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
  {
    name: "Pets Clinic Template",
    wix_meta_site_id: '12c4fd63-51f6-1dd5-981f-8bbfa782494f',
    image_url: 'template-1.png',
    price: 9.99
  },
  {
    name: "Agency Template",
    wix_meta_site_id: '12c50230-9864-5c42-cc5e-ad6125aeb641',
    image_url: 'template-2.png',
    price: 19.99
  }
].each do |template|
  Template.create(template)
end