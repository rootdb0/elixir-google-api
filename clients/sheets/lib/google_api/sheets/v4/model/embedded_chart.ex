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

defmodule GoogleApi.Sheets.V4.Model.EmbeddedChart do
  @moduledoc """
  A chart embedded in a sheet.

  ## Attributes

  *   `border` (*type:* `GoogleApi.Sheets.V4.Model.EmbeddedObjectBorder.t`, *default:* `nil`) - The border of the chart.
  *   `chartId` (*type:* `integer()`, *default:* `nil`) - The ID of the chart.
  *   `position` (*type:* `GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.t`, *default:* `nil`) - The position of the chart.
  *   `spec` (*type:* `GoogleApi.Sheets.V4.Model.ChartSpec.t`, *default:* `nil`) - The specification of the chart.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :border => GoogleApi.Sheets.V4.Model.EmbeddedObjectBorder.t() | nil,
          :chartId => integer() | nil,
          :position => GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.t() | nil,
          :spec => GoogleApi.Sheets.V4.Model.ChartSpec.t() | nil
        }

  field(:border, as: GoogleApi.Sheets.V4.Model.EmbeddedObjectBorder)
  field(:chartId)
  field(:position, as: GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition)
  field(:spec, as: GoogleApi.Sheets.V4.Model.ChartSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.EmbeddedChart do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.EmbeddedChart.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.EmbeddedChart do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
