# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: sample.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "ssf.SSFSample" do
    optional :metric, :enum, 1, "ssf.SSFSample.Metric"
    optional :name, :string, 2
    optional :value, :float, 3
    optional :timestamp, :int64, 4
    optional :message, :string, 5
    optional :status, :enum, 6, "ssf.SSFSample.Status"
    optional :sample_rate, :float, 7
    map :tags, :string, :string, 8
    optional :unit, :string, 9
  end
  add_enum "ssf.SSFSample.Metric" do
    value :COUNTER, 0
    value :GAUGE, 1
    value :HISTOGRAM, 2
    value :SET, 3
    value :STATUS, 4
  end
  add_enum "ssf.SSFSample.Status" do
    value :OK, 0
    value :WARNING, 1
    value :CRITICAL, 2
    value :UNKNOWN, 3
  end
  add_message "ssf.SSFSpan" do
    optional :version, :int32, 1
    optional :trace_id, :int64, 2
    optional :id, :int64, 3
    optional :parent_id, :int64, 4
    optional :start_timestamp, :int64, 5
    optional :end_timestamp, :int64, 6
    optional :error, :bool, 7
    optional :service, :string, 8
    optional :operation, :string, 9
    repeated :metrics, :message, 10, "ssf.SSFSample"
    map :tags, :string, :string, 11
  end
end

module Ssf
  SSFSample = Google::Protobuf::DescriptorPool.generated_pool.lookup("ssf.SSFSample").msgclass
  SSFSample::Metric = Google::Protobuf::DescriptorPool.generated_pool.lookup("ssf.SSFSample.Metric").enummodule
  SSFSample::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("ssf.SSFSample.Status").enummodule
  SSFSpan = Google::Protobuf::DescriptorPool.generated_pool.lookup("ssf.SSFSpan").msgclass
end