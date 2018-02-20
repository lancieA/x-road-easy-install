class InformationsController < ApplicationController
  
  def index
  	@information = Information.new
    puts "index"
  end

  def show
  	@information = Information.new
    puts "show"
  end

  def new
    @information = Information.new
    puts "new information"
  end

  def update
  	puts "update information"
  end

  def create
  	puts "create information"
  end

  private
		def information_params
			params.require(:information).permit(:domain_name, :machine_name, :ip_machine)
		end
end
