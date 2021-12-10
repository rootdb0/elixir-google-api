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

defmodule GoogleApi.AnalyticsData.V1beta.Model.Cohort do
  @moduledoc """
  Defines a cohort selection criteria. A cohort is a group of users who share a common characteristic. For example, users with the same `firstSessionDate` belong to the same cohort.

  ## Attributes

  *   `dateRange` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.DateRange.t`, *default:* `nil`) - The cohort selects users whose first touch date is between start date and end date defined in the `dateRange`. This `dateRange` does not specify the full date range of event data that is present in a cohort report. In a cohort report, this `dateRange` is extended by the granularity and offset present in the `cohortsRange`; event data for the extended reporting date range is present in a cohort report. In a cohort request, this `dateRange` is required and the `dateRanges` in the `RunReportRequest` or `RunPivotReportRequest` must be unspecified. This `dateRange` should generally be aligned with the cohort's granularity. If `CohortsRange` uses daily granularity, this `dateRange` can be a single day. If `CohortsRange` uses weekly granularity, this `dateRange` can be aligned to a week boundary, starting at Sunday and ending Saturday. If `CohortsRange` uses monthly granularity, this `dateRange` can be aligned to a month, starting at the first and ending on the last day of the month.
  *   `dimension` (*type:* `String.t`, *default:* `nil`) - Dimension used by the cohort. Required and only supports `firstSessionDate`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Assigns a name to this cohort. The dimension `cohort` is valued to this name in a report response. If set, cannot begin with `cohort_` or `RESERVED_`. If not set, cohorts are named by their zero based index `cohort_0`, `cohort_1`, etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateRange => GoogleApi.AnalyticsData.V1beta.Model.DateRange.t() | nil,
          :dimension => String.t() | nil,
          :name => String.t() | nil
        }

  field(:dateRange, as: GoogleApi.AnalyticsData.V1beta.Model.DateRange)
  field(:dimension)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.Cohort do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.Cohort.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.Cohort do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end