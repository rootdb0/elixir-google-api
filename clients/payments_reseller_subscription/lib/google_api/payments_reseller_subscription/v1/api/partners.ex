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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Api.Partners do
  @moduledoc """
  API calls for all endpoints tagged `Partners`.
  """

  alias GoogleApi.PaymentsResellerSubscription.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Used by partners to list products that can be resold to their customers. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The parent, the partner that can resell. Format: partners/{partner}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of products to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
      *   `:pageToken` (*type:* `String.t`) - Optional. A page token, received from a previous `ListProducts` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListProducts` must match the call that provided the page token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_products_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_products_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/products", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse{}
        ]
    )
  end

  @doc """
  Used by partners to list promotions, such as free trial, that can be applied on subscriptions. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The parent, the partner that can resell. Format: partners/{partner}
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - Optional. Specifies the filters for the promotion results. The syntax defined in the EBNF grammar: https://google.aip.dev/assets/misc/ebnf-filtering.txt. Examples: - applicable_products: "sku1" - region_codes: "US" - applicable_products: "sku1" AND region_codes: "US"
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
      *   `:pageToken` (*type:* `String.t`) - Optional. A page token, received from a previous `ListPromotions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPromotions` must match the call that provided the page token.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_promotions_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_promotions_list(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+parent}/promotions", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse{}
        ]
    )
  end

  @doc """
  Used by partners to cancel a subscription service either immediately or by the end of the current billing cycle for their customers. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the subscription resource to be cancelled. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}"
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_cancel(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_cancel(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:cancel", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse{}
        ]
    )
  end

  @doc """
  Used by partners to create a subscription for their customers. The created subscription is associated with the end user inferred from the end user credentials. This API must be authorized by the end user using OAuth.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The parent resource name, which is the identifier of the partner. It will have the format of "partners/{partner_id}".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:subscriptionId` (*type:* `String.t`) - Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at the maximum. If a subscription was previously created with the same subscription_id, we will directly return that one.
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_create(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_create(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :subscriptionId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/subscriptions", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}
        ]
    )
  end

  @doc """
  Used by partners to entitle a previously provisioned subscription to the current end user. The end user identity is inferred from the authorized credential of the request. This API must be authorized by the end user using OAuth.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the subscription resource that is entitled to the current end user. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}"
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_entitle(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_entitle(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:entitle", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse{}
        ]
    )
  end

  @doc """
  Used by partners to extend a subscription service for their customers on an ongoing basis for the subscription to remain active and renewable. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the subscription resource to be extended. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_extend(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_extend(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:extend", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse{}
        ]
    )
  end

  @doc """
  Used by partners to get a subscription by id. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the subscription resource to retrieve. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}"
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_get(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_get(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}
        ]
    )
  end

  @doc """
  Used by partners to provision a subscription for their customers. This creates a subscription without associating it with the end user account. EntitleSubscription must be called separately using OAuth in order for the end user account to be associated with the subscription. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `parent` (*type:* `String.t`) - Required. The parent resource name, which is the identifier of the partner. It will have the format of "partners/{partner_id}".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:subscriptionId` (*type:* `String.t`) - Required. Identifies the subscription resource on the Partner side. The value is restricted to 63 ASCII characters at the maximum. If a subscription was previously created with the same subscription_id, we will directly return that one.
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_provision(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_provision(
        connection,
        parent,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :subscriptionId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+parent}/subscriptions:provision", %{
        "parent" => URI.encode(parent, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Subscription{}
        ]
    )
  end

  @doc """
  Used by partners to revoke the pending cancellation of a subscription, which is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is already cancelled, the request will fail. It should be called directly by the partner using service accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - Required. The name of the subscription resource whose pending cancellation needs to be undone. It will have the format of "partners/{partner_id}/subscriptions/{subscription_id}"
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec paymentsresellersubscription_partners_subscriptions_undo_cancel(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def paymentsresellersubscription_partners_subscriptions_undo_cancel(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:undoCancel", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse{}
        ]
    )
  end
end