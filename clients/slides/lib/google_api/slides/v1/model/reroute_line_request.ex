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

defmodule GoogleApi.Slides.V1.Model.RerouteLineRequest do
  @moduledoc """
  Reroutes a line such that it's connected at the two closest connection sites on the connected page elements.

  ## Attributes

  *   `objectId` (*type:* `String.t`, *default:* `nil`) - The object ID of the line to reroute. Only a line with a category indicating it is a "connector" can be rerouted. The start and end connections of the line must be on different page elements.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :objectId => String.t() | nil
        }

  field(:objectId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.RerouteLineRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.RerouteLineRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.RerouteLineRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
