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

defmodule GoogleApi.Slides.V1.Model.CreateSheetsChartRequest do
  @moduledoc """
  Creates an embedded Google Sheets chart. NOTE: Chart creation requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, drive.file, or drive OAuth scopes.

  ## Attributes

  *   `chartId` (*type:* `integer()`, *default:* `nil`) - The ID of the specific chart in the Google Sheets spreadsheet.
  *   `elementProperties` (*type:* `GoogleApi.Slides.V1.Model.PageElementProperties.t`, *default:* `nil`) - The element properties for the chart. When the aspect ratio of the provided size does not match the chart aspect ratio, the chart is scaled and centered with respect to the size in order to maintain aspect ratio. The provided transform is applied after this operation.
  *   `linkingMode` (*type:* `String.t`, *default:* `nil`) - The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
  *   `objectId` (*type:* `String.t`, *default:* `nil`) - A user-supplied object ID. If specified, the ID must be unique among all pages and page elements in the presentation. The ID should start with a word character [a-zA-Z0-9_] and then followed by any number of the following characters [a-zA-Z0-9_-:]. The length of the ID should not be less than 5 or greater than 50. If empty, a unique identifier will be generated.
  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The ID of the Google Sheets spreadsheet that contains the chart.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chartId => integer() | nil,
          :elementProperties => GoogleApi.Slides.V1.Model.PageElementProperties.t() | nil,
          :linkingMode => String.t() | nil,
          :objectId => String.t() | nil,
          :spreadsheetId => String.t() | nil
        }

  field(:chartId)
  field(:elementProperties, as: GoogleApi.Slides.V1.Model.PageElementProperties)
  field(:linkingMode)
  field(:objectId)
  field(:spreadsheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.CreateSheetsChartRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.CreateSheetsChartRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.CreateSheetsChartRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
