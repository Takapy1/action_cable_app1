class Message < ApplicationRecord
  # MessageBroadcastJobは自作する()
  after_create_commit { MessageBroadcastJob.perform_later self }
end
