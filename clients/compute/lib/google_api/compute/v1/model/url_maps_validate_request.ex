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

defmodule GoogleApi.Compute.V1.Model.UrlMapsValidateRequest do
  @moduledoc """


  ## Attributes

  *   `loadBalancingSchemes` (*type:* `list(String.t)`, *default:* `nil`) - Specifies the load balancer type(s) this validation request is for. Use EXTERNAL_MANAGED for HTTP/HTTPS External Global Load Balancer with Advanced Traffic Management. Use EXTERNAL for Classic HTTP/HTTPS External Global Load Balancer. Other load balancer types are not supported. For more information, refer to Choosing a load balancer. If unspecified, the load balancing scheme will be inferred from the backend service resources this URL map references. If that can not be inferred (for example, this URL map only references backend buckets, or this Url map is for rewrites and redirects only and doesn't reference any backends), EXTERNAL will be used as the default type. If specified, the scheme(s) must not conflict with the load balancing scheme of the backend service resources this Url map references.
  *   `resource` (*type:* `GoogleApi.Compute.V1.Model.UrlMap.t`, *default:* `nil`) - Content of the UrlMap to be validated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :loadBalancingSchemes => list(String.t()) | nil,
          :resource => GoogleApi.Compute.V1.Model.UrlMap.t() | nil
        }

  field(:loadBalancingSchemes, type: :list)
  field(:resource, as: GoogleApi.Compute.V1.Model.UrlMap)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UrlMapsValidateRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UrlMapsValidateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UrlMapsValidateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
