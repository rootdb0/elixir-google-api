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

defmodule GoogleApi.Slides.V1.Model.UpdateSlidesPositionRequest do
  @moduledoc """
  Updates the position of slides in the presentation.

  ## Attributes

  *   `insertionIndex` (*type:* `integer()`, *default:* `nil`) - The index where the slides should be inserted, based on the slide arrangement before the move takes place. Must be between zero and the number of slides in the presentation, inclusive.
  *   `slideObjectIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the slides in the presentation that should be moved. The slides in this list must be in existing presentation order, without duplicates.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insertionIndex => integer() | nil,
          :slideObjectIds => list(String.t()) | nil
        }

  field(:insertionIndex)
  field(:slideObjectIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.UpdateSlidesPositionRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.UpdateSlidesPositionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.UpdateSlidesPositionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
