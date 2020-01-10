class Car < ActiveRecord::Base
  belongs_to :make
  belongs_to :model

  def name
    "#{year} #{make.name} #{model.name}"
  end

  def url
    "https://www.kbb.com/#{make.name.downcase}/#{model.name.downcase}/#{year}/"
  end

  def mpg
    Nokogiri::HTML(Excon.get(url).body).css('.stars').first.text
  end
end
