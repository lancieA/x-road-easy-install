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
  	
    if params[:information][:installation_type] != "Instance X-Road"
      f = File.open("./information-x-road.txt", "a+")
      f.puts(params[:information][:domain_name] + "\n")
      if params[:information][:ip_machine].to_i >= 1501 && params[:information][:ip_machine].to_i <= 10000
        f.puts("8192\n")
      elsif params[:information][:ip_machine].to_i >= 10001
        f.puts("16384\n")
      else
        f.puts("4096\n")
      end
      f.puts(params[:information][:machine_name] + "\n")
      f.puts(params[:information][:installation_type])
      f.puts("---------------- \n")
      f.close
    end

    session[:installation_type] = set_installation_process
  
    redirect_to root_path
  end

  private
		def information_params
			params.require(:information).permit(:domain_name, :machine_name, :ip_machine)
		end

    def set_installation_process
      @array_installation_type = ["Instance X-Road", "Security Server", "Central Server", "Certficat Autority Server", "Proxy Server"]
      current_step = nil
      i = 0

      if params[:information][:installation_type] == @array_installation_type[0]
        session[:installation_type_global] = true
        return "Security Server"
      else
        if @array_installation_type.include?(params[:information][:installation_type]) && session[:installation_type_global]
          @array_installation_type.each do |installation_type|
            if params[:information][:installation_type] == installation_type
              current_step = i
            end

            i += 1
          end

          return @array_installation_type[current_step+1]
        end
      end

      return nil
    end

end
