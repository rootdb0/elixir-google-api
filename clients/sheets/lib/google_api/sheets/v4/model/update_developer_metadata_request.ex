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

defmodule GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest do
  @moduledoc """
  A request to update properties of developer metadata. Updates the properties of the developer metadata selected by the filters to the values provided in the DeveloperMetadata resource. Callers must specify the properties they wish to update in the fields parameter, as well as specify at least one DataFilter matching the metadata they wish to update.

  ## Attributes

  *   `dataFilters` (*type:* `list(GoogleApi.Sheets.V4.Model.DataFilter.t)`, *default:* `nil`) - The filters matching the developer metadata entries to update.
  *   `developerMetadata` (*type:* `GoogleApi.Sheets.V4.Model.DeveloperMetadata.t`, *default:* `nil`) - The value that all metadata matched by the data filters will be updated to.
  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `developerMetadata` is implied and should not be specified. A single `"*"` can be used as short-hand for listing every field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFilters => list(GoogleApi.Sheets.V4.Model.DataFilter.t()) | nil,
          :developerMetadata => GoogleApi.Sheets.V4.Model.DeveloperMetadata.t() | nil,
          :fields => String.t() | nil
        }

  field(:dataFilters, as: GoogleApi.Sheets.V4.Model.DataFilter, type: :list)
  field(:developerMetadata, as: GoogleApi.Sheets.V4.Model.DeveloperMetadata)
  field(:fields)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
