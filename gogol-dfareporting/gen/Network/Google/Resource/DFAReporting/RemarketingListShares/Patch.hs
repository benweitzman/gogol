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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesPatch@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
    (
    -- * REST Resource
      RemarketingListSharesPatchResource

    -- * Creating a Request
    , remarketingListSharesPatch'
    , RemarketingListSharesPatch'

    -- * Request Lenses
    , rlspQuotaUser
    , rlspPrettyPrint
    , rlspUserIP
    , rlspProfileId
    , rlspRemarketingListShare
    , rlspRemarketingListId
    , rlspKey
    , rlspOAuthToken
    , rlspFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesPatch@ which the
-- 'RemarketingListSharesPatch'' request conforms to.
type RemarketingListSharesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "remarketingListId" Int64 :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RemarketingListShare :>
                             Patch '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListSharesPatch'' smart constructor.
data RemarketingListSharesPatch' = RemarketingListSharesPatch'
    { _rlspQuotaUser            :: !(Maybe Text)
    , _rlspPrettyPrint          :: !Bool
    , _rlspUserIP               :: !(Maybe Text)
    , _rlspProfileId            :: !Int64
    , _rlspRemarketingListShare :: !RemarketingListShare
    , _rlspRemarketingListId    :: !Int64
    , _rlspKey                  :: !(Maybe Key)
    , _rlspOAuthToken           :: !(Maybe OAuthToken)
    , _rlspFields               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlspQuotaUser'
--
-- * 'rlspPrettyPrint'
--
-- * 'rlspUserIP'
--
-- * 'rlspProfileId'
--
-- * 'rlspRemarketingListShare'
--
-- * 'rlspRemarketingListId'
--
-- * 'rlspKey'
--
-- * 'rlspOAuthToken'
--
-- * 'rlspFields'
remarketingListSharesPatch'
    :: Int64 -- ^ 'profileId'
    -> RemarketingListShare -- ^ 'RemarketingListShare'
    -> Int64 -- ^ 'remarketingListId'
    -> RemarketingListSharesPatch'
remarketingListSharesPatch' pRlspProfileId_ pRlspRemarketingListShare_ pRlspRemarketingListId_ =
    RemarketingListSharesPatch'
    { _rlspQuotaUser = Nothing
    , _rlspPrettyPrint = True
    , _rlspUserIP = Nothing
    , _rlspProfileId = pRlspProfileId_
    , _rlspRemarketingListShare = pRlspRemarketingListShare_
    , _rlspRemarketingListId = pRlspRemarketingListId_
    , _rlspKey = Nothing
    , _rlspOAuthToken = Nothing
    , _rlspFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlspQuotaUser :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspQuotaUser
  = lens _rlspQuotaUser
      (\ s a -> s{_rlspQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlspPrettyPrint :: Lens' RemarketingListSharesPatch' Bool
rlspPrettyPrint
  = lens _rlspPrettyPrint
      (\ s a -> s{_rlspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlspUserIP :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspUserIP
  = lens _rlspUserIP (\ s a -> s{_rlspUserIP = a})

-- | User profile ID associated with this request.
rlspProfileId :: Lens' RemarketingListSharesPatch' Int64
rlspProfileId
  = lens _rlspProfileId
      (\ s a -> s{_rlspProfileId = a})

-- | Multipart request metadata.
rlspRemarketingListShare :: Lens' RemarketingListSharesPatch' RemarketingListShare
rlspRemarketingListShare
  = lens _rlspRemarketingListShare
      (\ s a -> s{_rlspRemarketingListShare = a})

-- | Remarketing list ID.
rlspRemarketingListId :: Lens' RemarketingListSharesPatch' Int64
rlspRemarketingListId
  = lens _rlspRemarketingListId
      (\ s a -> s{_rlspRemarketingListId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlspKey :: Lens' RemarketingListSharesPatch' (Maybe Key)
rlspKey = lens _rlspKey (\ s a -> s{_rlspKey = a})

-- | OAuth 2.0 token for the current user.
rlspOAuthToken :: Lens' RemarketingListSharesPatch' (Maybe OAuthToken)
rlspOAuthToken
  = lens _rlspOAuthToken
      (\ s a -> s{_rlspOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlspFields :: Lens' RemarketingListSharesPatch' (Maybe Text)
rlspFields
  = lens _rlspFields (\ s a -> s{_rlspFields = a})

instance GoogleAuth RemarketingListSharesPatch' where
        authKey = rlspKey . _Just
        authToken = rlspOAuthToken . _Just

instance GoogleRequest RemarketingListSharesPatch'
         where
        type Rs RemarketingListSharesPatch' =
             RemarketingListShare
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RemarketingListSharesPatch'{..}
          = go _rlspQuotaUser (Just _rlspPrettyPrint)
              _rlspUserIP
              _rlspProfileId
              (Just _rlspRemarketingListId)
              _rlspKey
              _rlspOAuthToken
              _rlspFields
              (Just AltJSON)
              _rlspRemarketingListShare
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RemarketingListSharesPatchResource)
                      r
                      u