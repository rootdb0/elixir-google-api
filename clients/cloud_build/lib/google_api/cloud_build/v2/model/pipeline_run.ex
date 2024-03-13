# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudBuild.V2.Model.PipelineRun do
  @moduledoc """
  Message describing PipelineRun object

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - User annotations. See https://google.aip.dev/128#annotations
  *   `childReferences` (*type:* `list(GoogleApi.CloudBuild.V2.Model.ChildStatusReference.t)`, *default:* `nil`) - Output only. List of TaskRun and Run names and PipelineTask names for children of this PipelineRun.
  *   `completionTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the pipeline completed.
  *   `conditions` (*type:* `list(GoogleApi.CloudBuild.V2.Model.GoogleDevtoolsCloudbuildV2Condition.t)`, *default:* `nil`) - Output only. Kubernetes Conditions convention for PipelineRun status and error.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to create the `PipelineRun` was received.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Needed for declarative-friendly resources.
  *   `finallyStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. FinallyStartTime is when all non-finally tasks have been completed and only finally tasks are being executed. +optional
  *   `gcbParams` (*type:* `map()`, *default:* `nil`) - Output only. GCB default params.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The `PipelineRun` name with format `projects/{project}/locations/{location}/pipelineRuns/{pipeline_run}`
  *   `params` (*type:* `list(GoogleApi.CloudBuild.V2.Model.Param.t)`, *default:* `nil`) - Params is a list of parameter names and values.
  *   `pipelineRef` (*type:* `GoogleApi.CloudBuild.V2.Model.PipelineRef.t`, *default:* `nil`) - PipelineRef refer to a specific instance of a Pipeline.
  *   `pipelineRunStatus` (*type:* `String.t`, *default:* `nil`) - Pipelinerun status the user can provide. Used for cancellation.
  *   `pipelineSpec` (*type:* `GoogleApi.CloudBuild.V2.Model.PipelineSpec.t`, *default:* `nil`) - PipelineSpec defines the desired state of Pipeline.
  *   `provenance` (*type:* `GoogleApi.CloudBuild.V2.Model.Provenance.t`, *default:* `nil`) - Optional. Provenance configuration.
  *   `record` (*type:* `String.t`, *default:* `nil`) - Output only. The `Record` of this `PipelineRun`. Format: `projects/{project}/locations/{location}/results/{result_id}/records/{record_id}`
  *   `resolvedPipelineSpec` (*type:* `GoogleApi.CloudBuild.V2.Model.PipelineSpec.t`, *default:* `nil`) - Output only. The exact PipelineSpec used to instantiate the run.
  *   `results` (*type:* `list(GoogleApi.CloudBuild.V2.Model.PipelineRunResult.t)`, *default:* `nil`) - Optional. Output only. List of results written out by the pipeline's containers
  *   `security` (*type:* `GoogleApi.CloudBuild.V2.Model.Security.t`, *default:* `nil`) - Optional. Security configuration.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Service account used in the Pipeline. Deprecated; please use security.service_account instead.
  *   `skippedTasks` (*type:* `list(GoogleApi.CloudBuild.V2.Model.SkippedTask.t)`, *default:* `nil`) - Output only. List of tasks that were skipped due to when expressions evaluating to false.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the pipeline is actually started.
  *   `timeouts` (*type:* `GoogleApi.CloudBuild.V2.Model.TimeoutFields.t`, *default:* `nil`) - Time after which the Pipeline times out. Currently three keys are accepted in the map pipeline, tasks and finally with Timeouts.pipeline >= Timeouts.tasks + Timeouts.finally
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for the `PipelineRun`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the request to update the `PipelineRun` was received.
  *   `worker` (*type:* `GoogleApi.CloudBuild.V2.Model.Worker.t`, *default:* `nil`) - Optional. Worker configuration.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - Output only. The WorkerPool used to run this PipelineRun.
  *   `workflow` (*type:* `String.t`, *default:* `nil`) - Output only. The Workflow used to create this PipelineRun.
  *   `workspaces` (*type:* `list(GoogleApi.CloudBuild.V2.Model.WorkspaceBinding.t)`, *default:* `nil`) - Workspaces is a list of WorkspaceBindings from volumes to workspaces.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :childReferences => list(GoogleApi.CloudBuild.V2.Model.ChildStatusReference.t()) | nil,
          :completionTime => DateTime.t() | nil,
          :conditions =>
            list(GoogleApi.CloudBuild.V2.Model.GoogleDevtoolsCloudbuildV2Condition.t()) | nil,
          :createTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :finallyStartTime => DateTime.t() | nil,
          :gcbParams => map() | nil,
          :name => String.t() | nil,
          :params => list(GoogleApi.CloudBuild.V2.Model.Param.t()) | nil,
          :pipelineRef => GoogleApi.CloudBuild.V2.Model.PipelineRef.t() | nil,
          :pipelineRunStatus => String.t() | nil,
          :pipelineSpec => GoogleApi.CloudBuild.V2.Model.PipelineSpec.t() | nil,
          :provenance => GoogleApi.CloudBuild.V2.Model.Provenance.t() | nil,
          :record => String.t() | nil,
          :resolvedPipelineSpec => GoogleApi.CloudBuild.V2.Model.PipelineSpec.t() | nil,
          :results => list(GoogleApi.CloudBuild.V2.Model.PipelineRunResult.t()) | nil,
          :security => GoogleApi.CloudBuild.V2.Model.Security.t() | nil,
          :serviceAccount => String.t() | nil,
          :skippedTasks => list(GoogleApi.CloudBuild.V2.Model.SkippedTask.t()) | nil,
          :startTime => DateTime.t() | nil,
          :timeouts => GoogleApi.CloudBuild.V2.Model.TimeoutFields.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :worker => GoogleApi.CloudBuild.V2.Model.Worker.t() | nil,
          :workerPool => String.t() | nil,
          :workflow => String.t() | nil,
          :workspaces => list(GoogleApi.CloudBuild.V2.Model.WorkspaceBinding.t()) | nil
        }

  field(:annotations, type: :map)
  field(:childReferences, as: GoogleApi.CloudBuild.V2.Model.ChildStatusReference, type: :list)
  field(:completionTime, as: DateTime)

  field(:conditions,
    as: GoogleApi.CloudBuild.V2.Model.GoogleDevtoolsCloudbuildV2Condition,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:etag)
  field(:finallyStartTime, as: DateTime)
  field(:gcbParams, type: :map)
  field(:name)
  field(:params, as: GoogleApi.CloudBuild.V2.Model.Param, type: :list)
  field(:pipelineRef, as: GoogleApi.CloudBuild.V2.Model.PipelineRef)
  field(:pipelineRunStatus)
  field(:pipelineSpec, as: GoogleApi.CloudBuild.V2.Model.PipelineSpec)
  field(:provenance, as: GoogleApi.CloudBuild.V2.Model.Provenance)
  field(:record)
  field(:resolvedPipelineSpec, as: GoogleApi.CloudBuild.V2.Model.PipelineSpec)
  field(:results, as: GoogleApi.CloudBuild.V2.Model.PipelineRunResult, type: :list)
  field(:security, as: GoogleApi.CloudBuild.V2.Model.Security)
  field(:serviceAccount)
  field(:skippedTasks, as: GoogleApi.CloudBuild.V2.Model.SkippedTask, type: :list)
  field(:startTime, as: DateTime)
  field(:timeouts, as: GoogleApi.CloudBuild.V2.Model.TimeoutFields)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:worker, as: GoogleApi.CloudBuild.V2.Model.Worker)
  field(:workerPool)
  field(:workflow)
  field(:workspaces, as: GoogleApi.CloudBuild.V2.Model.WorkspaceBinding, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.PipelineRun do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.PipelineRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.PipelineRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
