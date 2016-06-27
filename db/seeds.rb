# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

### Main Assets

@logo = Blurb.create(name: 'Logo')
@logo.photos.create(image:File.new("#{Rails.root}/app/assets/images/steamspa-logo.png"))
@slider = Blurb.create(name: 'Slider')
@slider.galleries.create.photos.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-1.jpg"))
@slider.galleries.create.photos.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-2.jpg"))
@slider.galleries.create.photos.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-3.jpg"))

### Pages
@home_page = Page.create(name: 'Home')
@home_page.blurbs << @slider
