using LinkedInConnect;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace Mentr
{
    public partial class Home : System.Web.UI.Page
    {
        private static oAuthLinkedIn _oauth = new oAuthLinkedIn();
        protected void Page_Load(object sender, EventArgs e)
        {
            sessName.Text = "Welcome back, " + (string)Session["sessFirstName"] + "!";
            //Burcu
            // users profile url that needs to be encoded
            String eURL = HttpUtility.UrlEncode("https://uk.linkedin.com/pub/burcu-karabork/24/b76/1");
            string   dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            MemoryStream memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            XmlSerializer deserializer = new XmlSerializer(typeof(Person));
            Person person = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName1.Text = person.FirstName;
            lblHeadline1.Text = person.headLine;
            imgPicture1.ImageUrl = "~/Content/images/Burcu.jpg";//"https://media.licdn.com/mpr/mpr/shrink_500_500/p/2/000/190/2a4/2594d32.jpg"; //person.ImagerUrl;
            hlLinkedInUrl1.NavigateUrl = person.ProfileUrl;

            //Erasmia
            // users profile url that needs to be encoded
            eURL = HttpUtility.UrlEncode("https://uk.linkedin.com/in/erasmiaanastasaki");
            dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            deserializer = new XmlSerializer(typeof(Person));
            Person person2 = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName2.Text = person2.FirstName;
            lblHeadline2.Text = person2.headLine;
            imgPicture2.ImageUrl = "~/Content/images/Erasmia.jpg"; //person2.ImagerUrl;
            hlLinkedInUrl2.NavigateUrl = person2.ProfileUrl;

            //Ritu
            // users profile url that needs to be encoded
            eURL = HttpUtility.UrlEncode("http://uk.linkedin.com/in/vyasritu");
            dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            deserializer = new XmlSerializer(typeof(Person));
            Person person3 = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName3.Text = person3.FirstName;
            lblHeadline3.Text = person3.headLine;
            imgPicture3.ImageUrl = person3.ImagerUrl;
            hlLinkedInUrl3.NavigateUrl = person3.ProfileUrl;

            //Attia
            // users profile url that needs to be encoded
            eURL = HttpUtility.UrlEncode("https://uk.linkedin.com/pub/attia-khan/14/213/b7");
            dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            deserializer = new XmlSerializer(typeof(Person));
            Person person4 = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName4.Text = person4.FirstName;
            lblHeadline4.Text = person4.headLine;
            imgPicture4.ImageUrl = person4.ImagerUrl;
            hlLinkedInUrl4.NavigateUrl = person4.ProfileUrl;

            //Tracy
            // users profile url that needs to be encoded
            eURL = HttpUtility.UrlEncode("https://uk.linkedin.com/in/tracyhowl");
            dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            deserializer = new XmlSerializer(typeof(Person));
            Person person5 = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName5.Text = person5.FirstName;
            lblHeadline5.Text = person5.headLine;
            imgPicture5.ImageUrl = person5.ImagerUrl;
            hlLinkedInUrl5.NavigateUrl = person5.ProfileUrl;

            //Jade
            // users profile url that needs to be encoded
            eURL = HttpUtility.UrlEncode("https://uk.linkedin.com/in/jadegrant");
            dataResponse = _oauth.oAuthWebRequest(oAuthLinkedIn.Method.GET, "https://api.linkedin.com/v1/people/url=" + eURL + ":(first-name,last-name,headline,picture-url,site-standard-profile-request)", "");
            memoryStream = new MemoryStream(Encoding.ASCII.GetBytes(dataResponse));
            deserializer = new XmlSerializer(typeof(Person));
            Person person6 = (Person)deserializer.Deserialize(new StringReader(dataResponse));
            lblName6.Text = person6.FirstName;
            lblHeadline6.Text = person6.headLine;
            imgPicture6.ImageUrl = person6.ImagerUrl;
            hlLinkedInUrl6.NavigateUrl = person6.ProfileUrl;
        }
    }
}