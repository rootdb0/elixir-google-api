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

defmodule GoogleApi.CloudBuild.V2.Model.EmbeddedTask do
  @moduledoc """
  EmbeddedTask defines a Task that is embedded in a Pipeline.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - User annotations. See https://google.aip.dev/128#annotations
  *   `taskSpec` (*type:* `GoogleApi.CloudBuild.V2.Model.TaskSpec.t`, *default:* `nil`) - Spec to instantiate this TaskRun.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :taskSpec => GoogleApi.CloudBuild.V2.Model.TaskSpec.t() | nil
        }

  field(:annotations, type: :map)
  field(:taskSpec, as: GoogleApi.CloudBuild.V2.Model.TaskSpec)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.EmbeddedTask do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.EmbeddedTask.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.EmbeddedTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
