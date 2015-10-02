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
-- Module      : Network.Google.Resource.Plus.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a comment.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @PlusCommentsGet@.
module Network.Google.Resource.Plus.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgKey
    , cgOAuthToken
    , cgCommentId
    , cgFields
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusCommentsGet@ which the
-- 'CommentsGet'' request conforms to.
type CommentsGetResource =
     "comments" :>
       Capture "commentId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Get a comment.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Key)
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgCommentId   :: !Text
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgCommentId'
--
-- * 'cgFields'
commentsGet'
    :: Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCgCommentId_ =
    CommentsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgCommentId = pCgCommentId_
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CommentsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CommentsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' CommentsGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CommentsGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CommentsGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | The ID of the comment to get.
cgCommentId :: Lens' CommentsGet' Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CommentsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CommentsGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq plusURL
        requestWithRoute r u CommentsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIP
              _cgKey
              _cgOAuthToken
              _cgCommentId
              _cgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsGetResource)
                      r
                      u