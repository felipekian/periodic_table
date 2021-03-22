class TableController < ApplicationController
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
  end

  def show
    name = params[:name].downcase
    
    file = File.read("db/data.json")
    data = JSON.parse(file)[name]
   
    @element = data
    
  end
end
