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

defmodule GoogleApi.PrivateCA.V1.Model.AllowedKeyType do
  @moduledoc """
  Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.

  ## Attributes

  *   `ellipticCurve` (*type:* `GoogleApi.PrivateCA.V1.Model.EcKeyType.t`, *default:* `nil`) - Represents an allowed Elliptic Curve key type.
  *   `rsa` (*type:* `GoogleApi.PrivateCA.V1.Model.RsaKeyType.t`, *default:* `nil`) - Represents an allowed RSA key type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ellipticCurve => GoogleApi.PrivateCA.V1.Model.EcKeyType.t() | nil,
          :rsa => GoogleApi.PrivateCA.V1.Model.RsaKeyType.t() | nil
        }

  field(:ellipticCurve, as: GoogleApi.PrivateCA.V1.Model.EcKeyType)
  field(:rsa, as: GoogleApi.PrivateCA.V1.Model.RsaKeyType)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1.Model.AllowedKeyType do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1.Model.AllowedKeyType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1.Model.AllowedKeyType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end