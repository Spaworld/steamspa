class StaticController < ApplicationController
  before_action :set_generators, only: [:sizing, :kits]

  def kits
  end

  def sizing
  end

  def temp
    render layout: false
  end

  def set_generators
    @generators = Generator.all
  end

end
