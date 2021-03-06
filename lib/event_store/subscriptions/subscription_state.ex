defmodule EventStore.Subscriptions.SubscriptionState do
  @moduledoc false

  defstruct [
    :conn,
    :stream_uuid,
    :start_from,
    :subscription_name,
    :subscription_id,
    :selector,
    :mapper,
    :max_size,
    :partition_by,
    last_received: 0,
    last_sent: 0,
    last_ack: 0,
    queue_size: 0,
    subscribers: %{},
    partitions: %{},
    processed_event_ids: MapSet.new()
  ]
end
