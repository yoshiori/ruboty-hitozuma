module Ruboty
  module Handlers
    class Hitozuma < Base
      on( /.*/, name: "magi", description: "Whimsical Magi system", all: true)

      private

      def magi(message)
        if rand(100) == 0
          answer = (rand(10) != 0) ? "はい" : "いいえ"
          from = message.from_name
          return if from == message.robot.name
          if from
            message.reply("@#{message.from}: #{answer}")
          else
            message.reply("#{answer}")
          end
        end
      end
    end
  end
end
