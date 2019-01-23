require 'controller'

class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    header = ["Auteur","Contenu"]
    CSV.open("./db/gossip.csv", "a") do |csv|
      row = CSV::Row.new(header,[])
      row["Auteur"] = @author
      row["Contenu"] = @content
      csv << row
    end
  end

  def self.all
    all_gossips = []
    read = CSV.read(('./db/gossip.csv')
    read.each do |ligne|
       gossip_provisoire = Gossip.new(ligne[@content], ligne[@author])
       all_gossips << gossip_provisoire
     end
     return all_gossips
  end
end
