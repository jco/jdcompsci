class Library < ActiveRecord::Base
  has_attached_file :jar
  
  def self.all_jars
    self.all.map{|lib| lib.jar.url + ", "}.join("")
  end
end
