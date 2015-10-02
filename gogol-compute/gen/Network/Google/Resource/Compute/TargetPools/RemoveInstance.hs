{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.RemoveInstance
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes instance URL from targetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsRemoveInstance@.
module Network.Google.Resource.Compute.TargetPools.RemoveInstance
    (
    -- * REST Resource
      TargetPoolsRemoveInstanceResource

    -- * Creating a Request
    , targetPoolsRemoveInstance'
    , TargetPoolsRemoveInstance'

    -- * Request Lenses
    , tpriQuotaUser
    , tpriPrettyPrint
    , tpriProject
    , tpriTargetPool
    , tpriTargetPoolsRemoveInstanceRequest
    , tpriUserIP
    , tpriKey
    , tpriRegion
    , tpriOAuthToken
    , tpriFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsRemoveInstance@ which the
-- 'TargetPoolsRemoveInstance'' request conforms to.
type TargetPoolsRemoveInstanceResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "removeInstance" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] TargetPoolsRemoveInstanceRequest
                                 :> Post '[JSON] Operation

-- | Removes instance URL from targetPool.
--
-- /See:/ 'targetPoolsRemoveInstance'' smart constructor.
data TargetPoolsRemoveInstance' = TargetPoolsRemoveInstance'
    { _tpriQuotaUser                        :: !(Maybe Text)
    , _tpriPrettyPrint                      :: !Bool
    , _tpriProject                          :: !Text
    , _tpriTargetPool                       :: !Text
    , _tpriTargetPoolsRemoveInstanceRequest :: !TargetPoolsRemoveInstanceRequest
    , _tpriUserIP                           :: !(Maybe Text)
    , _tpriKey                              :: !(Maybe Key)
    , _tpriRegion                           :: !Text
    , _tpriOAuthToken                       :: !(Maybe OAuthToken)
    , _tpriFields                           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsRemoveInstance'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpriQuotaUser'
--
-- * 'tpriPrettyPrint'
--
-- * 'tpriProject'
--
-- * 'tpriTargetPool'
--
-- * 'tpriTargetPoolsRemoveInstanceRequest'
--
-- * 'tpriUserIP'
--
-- * 'tpriKey'
--
-- * 'tpriRegion'
--
-- * 'tpriOAuthToken'
--
-- * 'tpriFields'
targetPoolsRemoveInstance'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetPoolsRemoveInstanceRequest -- ^ 'TargetPoolsRemoveInstanceRequest'
    -> Text -- ^ 'region'
    -> TargetPoolsRemoveInstance'
targetPoolsRemoveInstance' pTpriProject_ pTpriTargetPool_ pTpriTargetPoolsRemoveInstanceRequest_ pTpriRegion_ =
    TargetPoolsRemoveInstance'
    { _tpriQuotaUser = Nothing
    , _tpriPrettyPrint = True
    , _tpriProject = pTpriProject_
    , _tpriTargetPool = pTpriTargetPool_
    , _tpriTargetPoolsRemoveInstanceRequest = pTpriTargetPoolsRemoveInstanceRequest_
    , _tpriUserIP = Nothing
    , _tpriKey = Nothing
    , _tpriRegion = pTpriRegion_
    , _tpriOAuthToken = Nothing
    , _tpriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpriQuotaUser :: Lens' TargetPoolsRemoveInstance' (Maybe Text)
tpriQuotaUser
  = lens _tpriQuotaUser
      (\ s a -> s{_tpriQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpriPrettyPrint :: Lens' TargetPoolsRemoveInstance' Bool
tpriPrettyPrint
  = lens _tpriPrettyPrint
      (\ s a -> s{_tpriPrettyPrint = a})

tpriProject :: Lens' TargetPoolsRemoveInstance' Text
tpriProject
  = lens _tpriProject (\ s a -> s{_tpriProject = a})

-- | Name of the TargetPool resource to which instance_url is to be removed.
tpriTargetPool :: Lens' TargetPoolsRemoveInstance' Text
tpriTargetPool
  = lens _tpriTargetPool
      (\ s a -> s{_tpriTargetPool = a})

-- | Multipart request metadata.
tpriTargetPoolsRemoveInstanceRequest :: Lens' TargetPoolsRemoveInstance' TargetPoolsRemoveInstanceRequest
tpriTargetPoolsRemoveInstanceRequest
  = lens _tpriTargetPoolsRemoveInstanceRequest
      (\ s a ->
         s{_tpriTargetPoolsRemoveInstanceRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpriUserIP :: Lens' TargetPoolsRemoveInstance' (Maybe Text)
tpriUserIP
  = lens _tpriUserIP (\ s a -> s{_tpriUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpriKey :: Lens' TargetPoolsRemoveInstance' (Maybe Key)
tpriKey = lens _tpriKey (\ s a -> s{_tpriKey = a})

-- | Name of the region scoping this request.
tpriRegion :: Lens' TargetPoolsRemoveInstance' Text
tpriRegion
  = lens _tpriRegion (\ s a -> s{_tpriRegion = a})

-- | OAuth 2.0 token for the current user.
tpriOAuthToken :: Lens' TargetPoolsRemoveInstance' (Maybe OAuthToken)
tpriOAuthToken
  = lens _tpriOAuthToken
      (\ s a -> s{_tpriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpriFields :: Lens' TargetPoolsRemoveInstance' (Maybe Text)
tpriFields
  = lens _tpriFields (\ s a -> s{_tpriFields = a})

instance GoogleAuth TargetPoolsRemoveInstance' where
        authKey = tpriKey . _Just
        authToken = tpriOAuthToken . _Just

instance GoogleRequest TargetPoolsRemoveInstance'
         where
        type Rs TargetPoolsRemoveInstance' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsRemoveInstance'{..}
          = go _tpriQuotaUser (Just _tpriPrettyPrint)
              _tpriProject
              _tpriTargetPool
              _tpriUserIP
              _tpriKey
              _tpriRegion
              _tpriOAuthToken
              _tpriFields
              (Just AltJSON)
              _tpriTargetPoolsRemoveInstanceRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsRemoveInstanceResource)
                      r
                      u