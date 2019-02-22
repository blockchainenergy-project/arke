module Arke::Strategy
  class Copy < Base
    def initialize(config)
      super
    end

    def call
      # So, here we need access to workers, at least to target worker
      puts 'Copy startegy called'
      action = Arke::Action.new(:echo_action, { 'hello' => 'world' })
      @target.send_action(action)
    end
  end
end
