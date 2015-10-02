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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsInsert@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Insert
    (
    -- * REST Resource
      MyLibraryAnnotationsInsertResource

    -- * Creating a Request
    , myLibraryAnnotationsInsert'
    , MyLibraryAnnotationsInsert'

    -- * Request Lenses
    , mlaiQuotaUser
    , mlaiAnnotation
    , mlaiPrettyPrint
    , mlaiCountry
    , mlaiUserIP
    , mlaiKey
    , mlaiShowOnlySummaryInResponse
    , mlaiSource
    , mlaiOAuthToken
    , mlaiFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsInsert@ which the
-- 'MyLibraryAnnotationsInsert'' request conforms to.
type MyLibraryAnnotationsInsertResource =
     "mylibrary" :>
       "annotations" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "country" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "showOnlySummaryInResponse" Bool :>
                     QueryParam "source" Text :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Annotation :>
                               Post '[JSON] Annotation

-- | Inserts a new annotation.
--
-- /See:/ 'myLibraryAnnotationsInsert'' smart constructor.
data MyLibraryAnnotationsInsert' = MyLibraryAnnotationsInsert'
    { _mlaiQuotaUser                 :: !(Maybe Text)
    , _mlaiAnnotation                :: !Annotation
    , _mlaiPrettyPrint               :: !Bool
    , _mlaiCountry                   :: !(Maybe Text)
    , _mlaiUserIP                    :: !(Maybe Text)
    , _mlaiKey                       :: !(Maybe Key)
    , _mlaiShowOnlySummaryInResponse :: !(Maybe Bool)
    , _mlaiSource                    :: !(Maybe Text)
    , _mlaiOAuthToken                :: !(Maybe OAuthToken)
    , _mlaiFields                    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlaiQuotaUser'
--
-- * 'mlaiAnnotation'
--
-- * 'mlaiPrettyPrint'
--
-- * 'mlaiCountry'
--
-- * 'mlaiUserIP'
--
-- * 'mlaiKey'
--
-- * 'mlaiShowOnlySummaryInResponse'
--
-- * 'mlaiSource'
--
-- * 'mlaiOAuthToken'
--
-- * 'mlaiFields'
myLibraryAnnotationsInsert'
    :: Annotation -- ^ 'Annotation'
    -> MyLibraryAnnotationsInsert'
myLibraryAnnotationsInsert' pMlaiAnnotation_ =
    MyLibraryAnnotationsInsert'
    { _mlaiQuotaUser = Nothing
    , _mlaiAnnotation = pMlaiAnnotation_
    , _mlaiPrettyPrint = True
    , _mlaiCountry = Nothing
    , _mlaiUserIP = Nothing
    , _mlaiKey = Nothing
    , _mlaiShowOnlySummaryInResponse = Nothing
    , _mlaiSource = Nothing
    , _mlaiOAuthToken = Nothing
    , _mlaiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlaiQuotaUser :: Lens' MyLibraryAnnotationsInsert' (Maybe Text)
mlaiQuotaUser
  = lens _mlaiQuotaUser
      (\ s a -> s{_mlaiQuotaUser = a})

-- | Multipart request metadata.
mlaiAnnotation :: Lens' MyLibraryAnnotationsInsert' Annotation
mlaiAnnotation
  = lens _mlaiAnnotation
      (\ s a -> s{_mlaiAnnotation = a})

-- | Returns response with indentations and line breaks.
mlaiPrettyPrint :: Lens' MyLibraryAnnotationsInsert' Bool
mlaiPrettyPrint
  = lens _mlaiPrettyPrint
      (\ s a -> s{_mlaiPrettyPrint = a})

-- | ISO-3166-1 code to override the IP-based location.
mlaiCountry :: Lens' MyLibraryAnnotationsInsert' (Maybe Text)
mlaiCountry
  = lens _mlaiCountry (\ s a -> s{_mlaiCountry = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlaiUserIP :: Lens' MyLibraryAnnotationsInsert' (Maybe Text)
mlaiUserIP
  = lens _mlaiUserIP (\ s a -> s{_mlaiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlaiKey :: Lens' MyLibraryAnnotationsInsert' (Maybe Key)
mlaiKey = lens _mlaiKey (\ s a -> s{_mlaiKey = a})

-- | Requests that only the summary of the specified layer be provided in the
-- response.
mlaiShowOnlySummaryInResponse :: Lens' MyLibraryAnnotationsInsert' (Maybe Bool)
mlaiShowOnlySummaryInResponse
  = lens _mlaiShowOnlySummaryInResponse
      (\ s a -> s{_mlaiShowOnlySummaryInResponse = a})

-- | String to identify the originator of this request.
mlaiSource :: Lens' MyLibraryAnnotationsInsert' (Maybe Text)
mlaiSource
  = lens _mlaiSource (\ s a -> s{_mlaiSource = a})

-- | OAuth 2.0 token for the current user.
mlaiOAuthToken :: Lens' MyLibraryAnnotationsInsert' (Maybe OAuthToken)
mlaiOAuthToken
  = lens _mlaiOAuthToken
      (\ s a -> s{_mlaiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlaiFields :: Lens' MyLibraryAnnotationsInsert' (Maybe Text)
mlaiFields
  = lens _mlaiFields (\ s a -> s{_mlaiFields = a})

instance GoogleAuth MyLibraryAnnotationsInsert' where
        authKey = mlaiKey . _Just
        authToken = mlaiOAuthToken . _Just

instance GoogleRequest MyLibraryAnnotationsInsert'
         where
        type Rs MyLibraryAnnotationsInsert' = Annotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryAnnotationsInsert'{..}
          = go _mlaiQuotaUser (Just _mlaiPrettyPrint)
              _mlaiCountry
              _mlaiUserIP
              _mlaiKey
              _mlaiShowOnlySummaryInResponse
              _mlaiSource
              _mlaiOAuthToken
              _mlaiFields
              (Just AltJSON)
              _mlaiAnnotation
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryAnnotationsInsertResource)
                      r
                      u