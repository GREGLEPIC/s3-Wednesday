require 'controller'

class View

  attr_reader :content, :author

  def create_gossip
    puts "Quel est votre nom?"
    author = gets.chomp
    puts "Quel est le gossip?"
    content = gets.chomp
    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    all_gossips = Gossip.all
    puts all_gossips
  end

  def destroy_gossips(gossips)
    all_gossips = Gossip.all
    puts all_gossips
    puts "Quel gossip voulez vous supprimer ?"
    choice = get.chomp
  end

    


end