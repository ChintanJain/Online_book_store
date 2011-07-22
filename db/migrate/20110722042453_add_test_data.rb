class AddTestData < ActiveRecord::Migration
  def self.up
    Product.create(:title => 'Ruby on Rails',
      :description =>
       %{<p>
        Ruby on Rails was extracted by David Heinemeier Hansson from his work on Basecamp, a project management tool by 37signals (now a web
        application company).[8] Hansson first released Ruby on Rails as open source in July 2004, but did not share commit rights to the
        project until February 2005.[9] In August 2006 the framework reached a milestone when Apple announced that it would ship Ruby on
        Rails with Mac OS X v10.5 "Leopard",[10] which was released in October 2007.
        Ruby on Rails version 2.3 was released on March 15, 2009. Major new developments in Ruby on Rails include templates, engines,
        Rack and nested model forms.
        </p>},
     :image_url => '/images/rails.png',
     :price => 30.00)
  end

  def self.down
     Product.delete_all
  end
end
