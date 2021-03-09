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

defmodule GoogleApi.Sheets.V4.Model.Spreadsheet do
  @moduledoc """
  Resource that represents a spreadsheet.

  ## Attributes

  *   `dataSourceSchedules` (*type:* `list(GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule.t)`, *default:* `nil`) - Output only. A list of data source refresh schedules.
  *   `dataSources` (*type:* `list(GoogleApi.Sheets.V4.Model.DataSource.t)`, *default:* `nil`) - A list of external data sources connected with the spreadsheet.
  *   `developerMetadata` (*type:* `list(GoogleApi.Sheets.V4.Model.DeveloperMetadata.t)`, *default:* `nil`) - The developer metadata associated with a spreadsheet.
  *   `namedRanges` (*type:* `list(GoogleApi.Sheets.V4.Model.NamedRange.t)`, *default:* `nil`) - The named ranges defined in a spreadsheet.
  *   `properties` (*type:* `GoogleApi.Sheets.V4.Model.SpreadsheetProperties.t`, *default:* `nil`) - Overall properties of a spreadsheet.
  *   `sheets` (*type:* `list(GoogleApi.Sheets.V4.Model.Sheet.t)`, *default:* `nil`) - The sheets that are part of a spreadsheet.
  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The ID of the spreadsheet. This field is read-only.
  *   `spreadsheetUrl` (*type:* `String.t`, *default:* `nil`) - The url of the spreadsheet. This field is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceSchedules =>
            list(GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule.t()) | nil,
          :dataSources => list(GoogleApi.Sheets.V4.Model.DataSource.t()) | nil,
          :developerMetadata => list(GoogleApi.Sheets.V4.Model.DeveloperMetadata.t()) | nil,
          :namedRanges => list(GoogleApi.Sheets.V4.Model.NamedRange.t()) | nil,
          :properties => GoogleApi.Sheets.V4.Model.SpreadsheetProperties.t() | nil,
          :sheets => list(GoogleApi.Sheets.V4.Model.Sheet.t()) | nil,
          :spreadsheetId => String.t() | nil,
          :spreadsheetUrl => String.t() | nil
        }

  field(:dataSourceSchedules, as: GoogleApi.Sheets.V4.Model.DataSourceRefreshSchedule, type: :list)

  field(:dataSources, as: GoogleApi.Sheets.V4.Model.DataSource, type: :list)
  field(:developerMetadata, as: GoogleApi.Sheets.V4.Model.DeveloperMetadata, type: :list)
  field(:namedRanges, as: GoogleApi.Sheets.V4.Model.NamedRange, type: :list)
  field(:properties, as: GoogleApi.Sheets.V4.Model.SpreadsheetProperties)
  field(:sheets, as: GoogleApi.Sheets.V4.Model.Sheet, type: :list)
  field(:spreadsheetId)
  field(:spreadsheetUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Spreadsheet do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.Spreadsheet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Spreadsheet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
