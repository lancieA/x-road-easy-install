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
    f = File.open("./information-x-road.txt", "w")
    f.puts(params[:information][:domain_name] + "\n")
    f.puts(params[:information][:ip_machine] + "\n")
    f.puts(params[:information][:machine_name] + "\n")
    f.puts(params[:information][:box] + "\n")
    f.puts(params[:information][:installation_type])
    f.close
  end

  private
		def information_params
			params.require(:information).permit(:domain_name, :machine_name, :ip_machine)
		end
end
