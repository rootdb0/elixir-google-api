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

defmodule GoogleApi.Slides.V1.Model.PageElementProperties do
  @moduledoc """
  Common properties for a page element. Note: When you initially create a PageElement, the API may modify the values of both `size` and `transform`, but the visual size will be unchanged.

  ## Attributes

  *   `pageObjectId` (*type:* `String.t`, *default:* `nil`) - The object ID of the page where the element is located.
  *   `size` (*type:* `GoogleApi.Slides.V1.Model.Size.t`, *default:* `nil`) - The size of the element.
  *   `transform` (*type:* `GoogleApi.Slides.V1.Model.AffineTransform.t`, *default:* `nil`) - The transform for the element.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageObjectId => String.t() | nil,
          :size => GoogleApi.Slides.V1.Model.Size.t() | nil,
          :transform => GoogleApi.Slides.V1.Model.AffineTransform.t() | nil
        }

  field(:pageObjectId)
  field(:size, as: GoogleApi.Slides.V1.Model.Size)
  field(:transform, as: GoogleApi.Slides.V1.Model.AffineTransform)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.PageElementProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.PageElementProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.PageElementProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
