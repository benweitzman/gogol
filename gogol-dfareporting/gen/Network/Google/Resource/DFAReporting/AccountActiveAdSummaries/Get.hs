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
-- Module      : Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountActiveAdSummariesGet@.
module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
    (
    -- * REST Resource
      AccountActiveAdSummariesGetResource

    -- * Creating a Request
    , accountActiveAdSummariesGet'
    , AccountActiveAdSummariesGet'

    -- * Request Lenses
    , aaasgQuotaUser
    , aaasgPrettyPrint
    , aaasgUserIP
    , aaasgProfileId
    , aaasgKey
    , aaasgSummaryAccountId
    , aaasgOAuthToken
    , aaasgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountActiveAdSummariesGet@ which the
-- 'AccountActiveAdSummariesGet'' request conforms to.
type AccountActiveAdSummariesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountActiveAdSummaries" :>
           Capture "summaryAccountId" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountActiveAdSummary

-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ 'accountActiveAdSummariesGet'' smart constructor.
data AccountActiveAdSummariesGet' = AccountActiveAdSummariesGet'
    { _aaasgQuotaUser        :: !(Maybe Text)
    , _aaasgPrettyPrint      :: !Bool
    , _aaasgUserIP           :: !(Maybe Text)
    , _aaasgProfileId        :: !Int64
    , _aaasgKey              :: !(Maybe Key)
    , _aaasgSummaryAccountId :: !Int64
    , _aaasgOAuthToken       :: !(Maybe OAuthToken)
    , _aaasgFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountActiveAdSummariesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaasgQuotaUser'
--
-- * 'aaasgPrettyPrint'
--
-- * 'aaasgUserIP'
--
-- * 'aaasgProfileId'
--
-- * 'aaasgKey'
--
-- * 'aaasgSummaryAccountId'
--
-- * 'aaasgOAuthToken'
--
-- * 'aaasgFields'
accountActiveAdSummariesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'summaryAccountId'
    -> AccountActiveAdSummariesGet'
accountActiveAdSummariesGet' pAaasgProfileId_ pAaasgSummaryAccountId_ =
    AccountActiveAdSummariesGet'
    { _aaasgQuotaUser = Nothing
    , _aaasgPrettyPrint = True
    , _aaasgUserIP = Nothing
    , _aaasgProfileId = pAaasgProfileId_
    , _aaasgKey = Nothing
    , _aaasgSummaryAccountId = pAaasgSummaryAccountId_
    , _aaasgOAuthToken = Nothing
    , _aaasgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaasgQuotaUser :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgQuotaUser
  = lens _aaasgQuotaUser
      (\ s a -> s{_aaasgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaasgPrettyPrint :: Lens' AccountActiveAdSummariesGet' Bool
aaasgPrettyPrint
  = lens _aaasgPrettyPrint
      (\ s a -> s{_aaasgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaasgUserIP :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgUserIP
  = lens _aaasgUserIP (\ s a -> s{_aaasgUserIP = a})

-- | User profile ID associated with this request.
aaasgProfileId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgProfileId
  = lens _aaasgProfileId
      (\ s a -> s{_aaasgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaasgKey :: Lens' AccountActiveAdSummariesGet' (Maybe Key)
aaasgKey = lens _aaasgKey (\ s a -> s{_aaasgKey = a})

-- | Account ID.
aaasgSummaryAccountId :: Lens' AccountActiveAdSummariesGet' Int64
aaasgSummaryAccountId
  = lens _aaasgSummaryAccountId
      (\ s a -> s{_aaasgSummaryAccountId = a})

-- | OAuth 2.0 token for the current user.
aaasgOAuthToken :: Lens' AccountActiveAdSummariesGet' (Maybe OAuthToken)
aaasgOAuthToken
  = lens _aaasgOAuthToken
      (\ s a -> s{_aaasgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaasgFields :: Lens' AccountActiveAdSummariesGet' (Maybe Text)
aaasgFields
  = lens _aaasgFields (\ s a -> s{_aaasgFields = a})

instance GoogleAuth AccountActiveAdSummariesGet'
         where
        authKey = aaasgKey . _Just
        authToken = aaasgOAuthToken . _Just

instance GoogleRequest AccountActiveAdSummariesGet'
         where
        type Rs AccountActiveAdSummariesGet' =
             AccountActiveAdSummary
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountActiveAdSummariesGet'{..}
          = go _aaasgQuotaUser (Just _aaasgPrettyPrint)
              _aaasgUserIP
              _aaasgProfileId
              _aaasgKey
              _aaasgSummaryAccountId
              _aaasgOAuthToken
              _aaasgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountActiveAdSummariesGetResource)
                      r
                      u