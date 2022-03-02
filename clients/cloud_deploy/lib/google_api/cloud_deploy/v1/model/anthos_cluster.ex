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

defmodule GoogleApi.CloudDeploy.V1.Model.AnthosCluster do
  @moduledoc """
  Information specifying an Anthos Cluster.

  ## Attributes

  *   `membership` (*type:* `String.t`, *default:* `nil`) - Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :membership => String.t() | nil
        }

  field(:membership)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.AnthosCluster do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.AnthosCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.AnthosCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end