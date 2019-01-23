require 'view'
require 'model'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    params = @view.index_gossips
  end

  def destroy_gossips
    params = @view.destroy_gossips
  end
end
