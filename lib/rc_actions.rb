require 'rc_actions/common_actions'
require 'rc_actions/actions'

Ardes::ResourcesController.actions = Programmable::ResourceController::Actions
Ardes::ResourcesController.singleton_actions = Programmable::ResourceController::SingletonActions