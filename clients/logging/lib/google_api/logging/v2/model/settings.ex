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

defmodule GoogleApi.Logging.V2.Model.Settings do
  @moduledoc """
  Describes the settings associated with a project, folder, organization, billing account, or flexible resource.

  ## Attributes

  *   `disableDefaultSink` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log ingestion if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. The resource name for the configured Cloud KMS key.KMS key name format: "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]" For example:"projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key"To enable CMEK for the Log Router, set this field to a valid kms_key_name for which the associated service account has the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms_key_name to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Log Router, set this field to an empty string.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.
  *   `kmsServiceAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. The service account that will be used by the Log Router to access your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign the role roles/cloudkms.cryptoKeyEncrypterDecrypter to the service account that the Log Router will use to access your Cloud KMS key. Use GetSettings to obtain the service account ID.See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the settings.
  *   `storageLocation` (*type:* `String.t`, *default:* `nil`) - Optional. The Cloud region that will be used for _Default and _Required log buckets for newly created projects and folders. For example europe-west1. This setting does not affect the location of custom log buckets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableDefaultSink => boolean() | nil,
          :kmsKeyName => String.t() | nil,
          :kmsServiceAccountId => String.t() | nil,
          :name => String.t() | nil,
          :storageLocation => String.t() | nil
        }

  field(:disableDefaultSink)
  field(:kmsKeyName)
  field(:kmsServiceAccountId)
  field(:name)
  field(:storageLocation)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.Settings do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end