### Blurbs:

def create_blurbs
  @promo_message = Blurb.create(
    name: 'Promo Message', content: 'The only steam generator with
  <strong>Quickstart&copy;</strong> , <strong>Continuous
  Steam</strong>  &amp;  <strong>Built-In  Autodrain</strong>'
  )
  @logo_blurb   = Blurb.create(name: 'Logo')
  @slider_blurb = Blurb.create(name: 'Slider')
end

def create_photos
  @slider_photo_1 = Photo.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-1.jpg"))
  @slider_photo_2 = Photo.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-2.jpg"))
  @slider_photo_2 = Photo.create(image:File.new("#{Rails.root}/app/assets/images/slider-image-3.jpg"))
  @logo_photo     = Photo.create(image: File.new("#{Rails.root}/app/assets/images/steamspa-logo.png"))
end

def create_pages
  @home_page          = Page.create(name: 'Home')
  @sizing_tool_page   = Page.create(name: 'Sizing Tool')
  @why_steamspa_page  = Page.create(name: 'Why SteamSpa')
  @resources_page     = Page.create(name: 'Resources')
  @find_a_dealer_page = Page.create(name: 'Find a Dealer')
  @contact_us_page    = Page.create(name: 'Contact Us')
  @free_quote_page    = Page.create(name: 'Free Quote')
end

def create_categories
  @steam_generators_category = Category.create(name: 'Steam Generators', description: 'SteamSpa utilizes the latest innovations in compressed hydrothermal techology to generate a steady flow of rich, soothing steam. Click here to find out how SteamSpa will bring the sauna to you.')
end

def create_products
  @steam_generator = Product.create(
    name: 'QuickStart Steam Generator Unit',
    description: "SteamSpa crafts the most advanced steam producing generator unit in today's market. Constructed of high tension stainless steel for lasting longevity the QuickStart steam producing generators are designed to be the core piece of your personal steam spa oasis.<br/> The QuickStart steam generator incorporates high end designs and technology into each unit as standard features creating an impressive valued deal you cannot afford to pass up.",
    features:[
    'QuickStart Technology',
    'Continuous Steam Output',
    'Built-in AutoDrain',
    'Whisper Quiet Design',
    'Superior Craftsmanship'
    ]
  )
  @stem_generator_45 = Variation.create(
    name:         '45KW QuickStart Steam Generator',
    product_id:   1
  )
  Attribute.create(
    name:         'wattage',
    value:        '4.5KW',
    variation_id: 1
  )
  @steam_generator.categories << @steam_generators_category
end

def create_menus_and_menu_items
  @header_menu        = Menu.create(name: 'Home')
  @products_menu_item = MenuItem.create(name: 'Products', menu_position: 0)
  @products_menu_item.categories << Product.all.map { |p| p.categories }
end

create_blurbs
create_photos
create_pages
create_categories
create_products
create_menus_and_menu_items
@logo_blurb.photos << @logo_photo
@home_page.blurbs << @logo_blurb
@home_page.blurbs << @slider_blurb
