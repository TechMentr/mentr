using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace LinkedInConnect
{
    public class oAuthLinkedIn : oAuthBase2
    {
        public enum Method { GET, POST, PUT, DELETE };

        // our api keys
        private string _consumerKey = "75vnd5o10zercx";
        private string _consumerSecret = "778l35QwDVuHQdrX";
        private string _token = "24c457e4-836a-42fe-9404-4cd23115a521";
        private string _tokenSecret = "9f9258ab-bdd5-4cfb-b9d5-4a1922ff5147";

        #region Properties
        public string ConsumerKey
        {
            get
            {
                return _consumerKey;
            }
            set { _consumerKey = value; }
        }

        public string ConsumerSecret
        {
            get
            {
                return _consumerSecret;
            }
            set { _consumerSecret = value; }
        }
        public string Token { get { return _token; } set { _token = value; } }
        public string TokenSecret { get { return _tokenSecret; } set { _tokenSecret = value; } }

        #endregion


        /// <summary>
        /// Submit a web request using oAuth.
        /// </summary>
        /// <param name="method">GET</param>
        /// <param name="url">The full url, including the querystring.</param>
        /// <param name="postData">Data to post (querystring format)</param>
        /// <returns>The web server response.</returns>
        public string oAuthWebRequest(Method method, string url, string postData)
        {
            string outUrl = "";
            string querystring = "";
            string ret = "";

            Uri uri = new Uri(url);

            string nonce = this.GenerateNonce();
            string timeStamp = this.GenerateTimeStamp();


            //Generate Signature
            string sig = this.GenerateSignature(uri,
                this.ConsumerKey,
                this.ConsumerSecret,
                this.Token,
                this.TokenSecret,
                method.ToString(),
                timeStamp,
                nonce,
                out outUrl,
                out querystring);


            querystring += "&oauth_signature=" + HttpUtility.UrlEncode(sig);

            if (querystring.Length > 0)
            {
                url += "?";
            }


            if (method == Method.POST || method == Method.GET)
            {
                ret = WebRequest(method, url + querystring, postData);
            }
            return ret;
        }


        /// <summary>
        /// Web Request Wrapper
        /// </summary>
        /// <param name="method">Http Method</param>
        /// <param name="url">Full url to the web resource</param>
        /// <param name="postData">Data to post in querystring format</param>
        /// <returns>The web server response.</returns>
        public string WebRequest(Method method, string url, string postData)
        {
            HttpWebRequest webRequest = null;
            string responseData = "";

            webRequest = System.Net.WebRequest.Create(HackedUri.Create(url)) as HttpWebRequest;
            webRequest.Method = method.ToString();
            webRequest.ServicePoint.Expect100Continue = false;
            responseData = WebResponseGet(webRequest);

            webRequest = null;

            return responseData;

        }
        /// <summary>
        /// Process the web response.
        /// </summary>
        /// <param name="webRequest">The request object.</param>
        /// <returns>The response data.</returns>
        public string WebResponseGet(HttpWebRequest webRequest)
        {
            StreamReader responseReader = null;
            string responseData = "";

            try
            {
                responseReader = new StreamReader(webRequest.GetResponse().GetResponseStream());
                responseData = responseReader.ReadToEnd();
            }
            catch
            {
                throw;
            }
            finally
            {
                webRequest.GetResponse().GetResponseStream().Close();
                responseReader.Close();
                responseReader = null;
            }

            return responseData;
        }
    }
}
