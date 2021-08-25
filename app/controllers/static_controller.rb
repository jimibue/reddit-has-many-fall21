class StaticController < ApplicationController
  def home
    render component: "Home", props: { info: "Yo" }
  end
end
