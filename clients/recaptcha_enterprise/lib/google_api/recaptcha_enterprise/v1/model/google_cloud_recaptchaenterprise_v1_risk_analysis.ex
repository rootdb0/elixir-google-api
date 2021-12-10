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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1RiskAnalysis do
  @moduledoc """
  Risk analysis result for an event.

  ## Attributes

  *   `reasons` (*type:* `list(String.t)`, *default:* `nil`) - Reasons contributing to the risk analysis verdict.
  *   `score` (*type:* `number()`, *default:* `nil`) - Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate traffic while 0.0 means very likely non-legitimate traffic).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reasons => list(String.t()) | nil,
          :score => number() | nil
        }

  field(:reasons, type: :list)
  field(:score)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1RiskAnalysis do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1RiskAnalysis.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1RiskAnalysis do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end