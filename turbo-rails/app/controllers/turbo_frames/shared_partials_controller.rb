# frozen_string_literal: true

class TurboFrames::SharedPartialsController < ApplicationController
  # provides a reusable route that accepts a partial as a parameter
  def new
    render partial: params[:partial],
           locals: params[:locals],
           as: params[:as]
  end

  def index; end
end
