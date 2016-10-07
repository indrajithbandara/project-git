RailsAdmin.config do |config|

  config.total_columns_width = 9999999 # Ini Horizontal Scrolling Table

  config.main_app_name = ["simavi"] #Ini Nama Backend
  config.navigation_static_label = "About"  # Ini dan ke bawahnya merubah label default model
  config.navigation_static_label = "Article Travel"
  config.navigation_static_label = "Article Event"
  config.navigation_static_label = "Category Travel"
  config.navigation_static_label = "Category Event"
  config.navigation_static_label = "Slide Home"
  config.navigation_static_label = "Setting"
  config.navigation_static_label = "Admin Data"
  config.excluded_models << "Slide"

      if defined?(WillPaginate)  # Ini line code untuk pagination rails admin
      module WillPaginate
        module ActiveRecord
          module RelationMethods
            alias_method :per, :per_page
            alias_method :num_pages, :total_pages
          end
        end
      end
    end


  config.model 'Akira' do
  label "Admin Data" 
    edit do
      field :email
      field :admin
      field :password
      field :password_confirmation
    end
    list do
     field :id
     field :admin
     field :email
     field :password
     field :password_confirmation
    end
  end

  config.model 'About' do 
    label "About"  # Ini Label static yang ada di atas tadi
    edit do
      field :title  # Ini Costum data model
      field :content, :ck_editor
    end

    list do
      field :id
      field :title do
        label "Title About"
      end
    end
  end

  config.model 'Travel' do
    label "Article Travel"
     edit do
      field :title do
        label "title travel"
        help "Title"
      end
      field :description do
      label "description travel"
      help "keterangan tempat, tanggal atau yang lainya"  
      end
      field :content, :ck_editor do
        label "content travel"
        help "Tambah keterangan pada gambar, jika tidak di isi tidak akan tampil"
      end
      field :tcategory do
        label "Category Travel"
      end
    end #Akhir dari dari edit travel model

    list do
      field :id
      field :title do
        label "Title travel"
      end
      field :image1 do
        label "Slide Image"
      end
      field :tcategory do
        label "Category"
      end
    end #Akhir dari list travel model

  end #Akhir dari travel model

  config.model 'Event' do
    label "Article Event"
    edit do
      field :title
      field :description
      field :content, :ck_editor
      field :ecategory do
        label "Category Event"
      end
    end #Akhir dari edit event model
    list do
      field :id
      field :title do
        label "Title Event"
      end
      field :ecategory do
        label "Category"
      end
    end #Akhir dari dari list event model
  end #Akhir dari model event

   config.model 'Tcategory' do
    label "Category Travel"
      edit do
        field :name
      end
      list do
        field :id
        field :name do
          label "Category Travel"
        end
      end
  end

  config.model 'Ecategory' do
    label "Category Event"
      edit do
        field :name
      end
      list do
        field :id
        field :name do
          label "Category Event"
        end
      end
  end

  config.model 'Slide' do
    label "Slide Home"
      edit do
        field :image
        field :title
        field :description
        field :content
        field :link
      end

      list do
        field :id
        field :title
        field :image
        field :link
      end
  end


  config.model 'Setting' do
    label "Setting"
      edit do
        field :title_website
        field :title_travel
        field :title_event
        field :disqus do
        label "Disqus Comment"
        help "Copy & Paste disqus source code di sini, pilih universal pada disqus" 
        end
        field :title_footer
      end

      list do
        field :title_website
        field :title_event
        field :title_travel
        field :title_footer
      end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
     history_index
     history_show
  end
end
