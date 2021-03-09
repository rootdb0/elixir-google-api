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

defmodule GoogleApi.Slides.V1.Model.ColorScheme do
  @moduledoc """
  The palette of predefined colors for a page.

  ## Attributes

  *   `colors` (*type:* `list(GoogleApi.Slides.V1.Model.ThemeColorPair.t)`, *default:* `nil`) - The ThemeColorType and corresponding concrete color pairs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :colors => list(GoogleApi.Slides.V1.Model.ThemeColorPair.t()) | nil
        }

  field(:colors, as: GoogleApi.Slides.V1.Model.ThemeColorPair, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ColorScheme do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ColorScheme.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ColorScheme do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
