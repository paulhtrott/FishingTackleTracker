class JavascriptsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def dynamic_tackle_type
    @tackle = TackleType.all
  end
end
