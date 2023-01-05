class ModdersController < ApplicationController

  def index
    @title = 'Modder search'

    services = params[:services] || '[]'
    @services = JSON.parse(services).select { |service| ModderService::ALL_SERVICES.include? service.to_sym }
    @city = params[:city]
    @latitude = params[:latitude]
    @longitude = params[:longitude]
    @query = params[:query]
    @map = params[:map] == '1'

    @results_visible = @services.present? || (@latitude.present? && @longitude.present?)
    @results = Modder.all

    if @services.present?
      eligible_modders = ModderService.where(service: @services).group(:modder_id).having('count(modder_id) = ?', @services.count).count.keys
      @results = @results.includes(:modder_services).where(id: eligible_modders)
    end

    if @query.present?
      @results = @results.name_similar_to(@query)
    elsif @latitude.present? && @longitude.present?
      @results = @results.order_by_proximity(@latitude, @longitude)
    else
      @results = @results.order('random()')
    end
  end

  def show
    @modder = Modder.find_by(slug: params[:id]) or not_found
    return not_found if @modder.inactive? && @modder != current_modder
    @title = @modder.name
  end

end
