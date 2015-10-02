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
-- Module      : Network.Google.Resource.Calendar.Settings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a single user setting.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarSettingsGet@.
module Network.Google.Resource.Calendar.Settings.Get
    (
    -- * REST Resource
      SettingsGetResource

    -- * Creating a Request
    , settingsGet'
    , SettingsGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgSetting
    , sgKey
    , sgOAuthToken
    , sgFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarSettingsGet@ which the
-- 'SettingsGet'' request conforms to.
type SettingsGetResource =
     "users" :>
       "me" :>
         "settings" :>
           Capture "setting" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Setting

-- | Returns a single user setting.
--
-- /See:/ 'settingsGet'' smart constructor.
data SettingsGet' = SettingsGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIP      :: !(Maybe Text)
    , _sgSetting     :: !Text
    , _sgKey         :: !(Maybe Key)
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgSetting'
--
-- * 'sgKey'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
settingsGet'
    :: Text -- ^ 'setting'
    -> SettingsGet'
settingsGet' pSgSetting_ =
    SettingsGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgSetting = pSgSetting_
    , _sgKey = Nothing
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SettingsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SettingsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' SettingsGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | The id of the user setting.
sgSetting :: Lens' SettingsGet' Text
sgSetting
  = lens _sgSetting (\ s a -> s{_sgSetting = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SettingsGet' (Maybe Key)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SettingsGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SettingsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SettingsGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SettingsGet' where
        type Rs SettingsGet' = Setting
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u SettingsGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIP
              _sgSetting
              _sgKey
              _sgOAuthToken
              _sgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SettingsGetResource)
                      r
                      u