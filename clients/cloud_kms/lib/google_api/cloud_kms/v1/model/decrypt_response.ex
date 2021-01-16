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

defmodule GoogleApi.CloudKMS.V1.Model.DecryptResponse do
  @moduledoc """
  Response message for KeyManagementService.Decrypt.

  ## Attributes

  *   `plaintext` (*type:* `String.t`, *default:* `nil`) - The decrypted data originally supplied in EncryptRequest.plaintext.
  *   `plaintextCrc32c` (*type:* `String.t`, *default:* `nil`) - Integrity verification field. A CRC32C checksum of the returned DecryptResponse.plaintext. An integrity check of DecryptResponse.plaintext can be performed by computing the CRC32C checksum of DecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. NOTE: This field is in Beta.
  *   `protectionLevel` (*type:* `String.t`, *default:* `nil`) - The ProtectionLevel of the CryptoKeyVersion used in decryption.
  *   `usedPrimary` (*type:* `boolean()`, *default:* `nil`) - Whether the Decryption was performed using the primary key version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :plaintext => String.t(),
          :plaintextCrc32c => String.t(),
          :protectionLevel => String.t(),
          :usedPrimary => boolean()
        }

  field(:plaintext)
  field(:plaintextCrc32c)
  field(:protectionLevel)
  field(:usedPrimary)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.DecryptResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.DecryptResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.DecryptResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
