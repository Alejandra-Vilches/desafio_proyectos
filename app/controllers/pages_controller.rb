class PagesController < ApplicationController
  def index
    @proyects = Proyect.all

  end

  def create
    @proyect = Proyect.create(name: params[:nombre], description: params[:descripcion], startdate: params[:fecha_inicio], enddate: params[:fecha_termino], state: params[:estado])
  end
  
  def dashboard
    if params[:state].present?
      @proyects = Proyect.where('state = ?', params[:state])
    else
      @proyects = Proyect.all
    end
  end
end
