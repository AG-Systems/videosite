class ContentsController < ApplicationController
  before_filter :authenticate_user!
  layout 'application'
  def confidence
  end

  def motivational
  end
  def accepting
  end
end
