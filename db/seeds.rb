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

create_blurbs
create_photos
create_pages
@logo_blurb.photos << @logo_photo
@home_page.blurbs << @logo_blurb
@home_page.blurbs << @slider_blurb
