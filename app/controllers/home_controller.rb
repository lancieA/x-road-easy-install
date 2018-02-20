class HomeController < ApplicationController
  
  def index
  	@information = Information.new
  	puts "index"
  end

  def show
  	#@information = Information.new
  end

  def new
  	
  end

  def update
  	puts "update"
  end

  def create
  	puts "create"
  end

end
