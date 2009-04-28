require 'rc_actions/common_actions'
require 'rc_actions/actions'

module Programmable
  module RCActions
    def self.install
      Ardes::ResourcesController.actions = Programmable::ResourceController::Actions
      Ardes::ResourcesController.singleton_actions = Programmable::ResourceController::SingletonActions
    end
  end
end

