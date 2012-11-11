class TemplatesController < ApplicationController
  def index
    @templates = Template.all
  end

  # def buy
  #   @template = Template.find(params[:id])
  #   session[:wix_meta_site_id] = params[:id]
  # end
end
