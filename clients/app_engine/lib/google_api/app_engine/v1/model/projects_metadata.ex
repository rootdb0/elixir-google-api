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

defmodule GoogleApi.AppEngine.V1.Model.ProjectsMetadata do
  @moduledoc """
  ProjectsMetadata is the metadata CCFE stores about the all the relevant projects (tenant, consumer, producer).

  ## Attributes

  *   `consumerProjectId` (*type:* `String.t`, *default:* `nil`) - The consumer project id.
  *   `consumerProjectNumber` (*type:* `String.t`, *default:* `nil`) - The consumer project number.
  *   `consumerProjectState` (*type:* `String.t`, *default:* `nil`) - The CCFE state of the consumer project. It is the same state that is communicated to the CLH during project events. Notice that this field is not set in the DB, it is only set in this proto when communicated to CLH in the side channel.
  *   `p4ServiceAccount` (*type:* `String.t`, *default:* `nil`) - The service account authorized to operate on the consumer project. Note: CCFE only propagates P4SA with default tag to CLH.
  *   `producerProjectId` (*type:* `String.t`, *default:* `nil`) - The producer project id.
  *   `producerProjectNumber` (*type:* `String.t`, *default:* `nil`) - The producer project number.
  *   `tenantProjectId` (*type:* `String.t`, *default:* `nil`) - The tenant project id.
  *   `tenantProjectNumber` (*type:* `String.t`, *default:* `nil`) - The tenant project number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerProjectId => String.t() | nil,
          :consumerProjectNumber => String.t() | nil,
          :consumerProjectState => String.t() | nil,
          :p4ServiceAccount => String.t() | nil,
          :producerProjectId => String.t() | nil,
          :producerProjectNumber => String.t() | nil,
          :tenantProjectId => String.t() | nil,
          :tenantProjectNumber => String.t() | nil
        }

  field(:consumerProjectId)
  field(:consumerProjectNumber)
  field(:consumerProjectState)
  field(:p4ServiceAccount)
  field(:producerProjectId)
  field(:producerProjectNumber)
  field(:tenantProjectId)
  field(:tenantProjectNumber)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ProjectsMetadata do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ProjectsMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ProjectsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
