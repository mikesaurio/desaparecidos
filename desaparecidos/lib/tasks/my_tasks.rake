namespace :my_tasks do
 require 'csv'

  desc "Load casos to the db"
  task :load_casos  => :environment do |t, args| 

     cities_files = ['lib/datasets/listaac.csv']
    
    cities_files.each do |city_file|
      CSV.foreach(city_file, :headers => true) do |row|
        name = row.to_hash['name']
        since = row.to_hash['since']
        detail = row.to_hash['detail']
        status = row.to_hash['status']
        picture = row.to_hash['picture']
        city = row.to_hash['city']
        state = row.to_hash['state']
        url_audio = row.to_hash['url_audio']

          Missing.create(name: name, since: since , detail: detail,
           status: status, picture: picture, city: city, state: state, url_audio: url_audio)

      end
    end
  end


end
