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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesUpdate@.
module Network.Google.Resource.DFAReporting.Creatives.Update
    (
    -- * REST Resource
      CreativesUpdateResource

    -- * Creating a Request
    , creativesUpdate'
    , CreativesUpdate'

    -- * Request Lenses
    , cuuQuotaUser
    , cuuPrettyPrint
    , cuuUserIP
    , cuuCreative
    , cuuProfileId
    , cuuKey
    , cuuOAuthToken
    , cuuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesUpdate@ which the
-- 'CreativesUpdate'' request conforms to.
type CreativesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Creative :> Put '[JSON] Creative

-- | Updates an existing creative.
--
-- /See:/ 'creativesUpdate'' smart constructor.
data CreativesUpdate' = CreativesUpdate'
    { _cuuQuotaUser   :: !(Maybe Text)
    , _cuuPrettyPrint :: !Bool
    , _cuuUserIP      :: !(Maybe Text)
    , _cuuCreative    :: !Creative
    , _cuuProfileId   :: !Int64
    , _cuuKey         :: !(Maybe Key)
    , _cuuOAuthToken  :: !(Maybe OAuthToken)
    , _cuuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuQuotaUser'
--
-- * 'cuuPrettyPrint'
--
-- * 'cuuUserIP'
--
-- * 'cuuCreative'
--
-- * 'cuuProfileId'
--
-- * 'cuuKey'
--
-- * 'cuuOAuthToken'
--
-- * 'cuuFields'
creativesUpdate'
    :: Creative -- ^ 'Creative'
    -> Int64 -- ^ 'profileId'
    -> CreativesUpdate'
creativesUpdate' pCuuCreative_ pCuuProfileId_ =
    CreativesUpdate'
    { _cuuQuotaUser = Nothing
    , _cuuPrettyPrint = True
    , _cuuUserIP = Nothing
    , _cuuCreative = pCuuCreative_
    , _cuuProfileId = pCuuProfileId_
    , _cuuKey = Nothing
    , _cuuOAuthToken = Nothing
    , _cuuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuuQuotaUser :: Lens' CreativesUpdate' (Maybe Text)
cuuQuotaUser
  = lens _cuuQuotaUser (\ s a -> s{_cuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuuPrettyPrint :: Lens' CreativesUpdate' Bool
cuuPrettyPrint
  = lens _cuuPrettyPrint
      (\ s a -> s{_cuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuuUserIP :: Lens' CreativesUpdate' (Maybe Text)
cuuUserIP
  = lens _cuuUserIP (\ s a -> s{_cuuUserIP = a})

-- | Multipart request metadata.
cuuCreative :: Lens' CreativesUpdate' Creative
cuuCreative
  = lens _cuuCreative (\ s a -> s{_cuuCreative = a})

-- | User profile ID associated with this request.
cuuProfileId :: Lens' CreativesUpdate' Int64
cuuProfileId
  = lens _cuuProfileId (\ s a -> s{_cuuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuuKey :: Lens' CreativesUpdate' (Maybe Key)
cuuKey = lens _cuuKey (\ s a -> s{_cuuKey = a})

-- | OAuth 2.0 token for the current user.
cuuOAuthToken :: Lens' CreativesUpdate' (Maybe OAuthToken)
cuuOAuthToken
  = lens _cuuOAuthToken
      (\ s a -> s{_cuuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuuFields :: Lens' CreativesUpdate' (Maybe Text)
cuuFields
  = lens _cuuFields (\ s a -> s{_cuuFields = a})

instance GoogleAuth CreativesUpdate' where
        authKey = cuuKey . _Just
        authToken = cuuOAuthToken . _Just

instance GoogleRequest CreativesUpdate' where
        type Rs CreativesUpdate' = Creative
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativesUpdate'{..}
          = go _cuuQuotaUser (Just _cuuPrettyPrint) _cuuUserIP
              _cuuProfileId
              _cuuKey
              _cuuOAuthToken
              _cuuFields
              (Just AltJSON)
              _cuuCreative
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesUpdateResource)
                      r
                      u