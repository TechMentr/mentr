using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace LinkedInConnect
{
    [Serializable, XmlRoot("person")]
    public class Person
    {
        [XmlElement("id")]
        public string id { get; set; }

        [XmlElement("first-name")]
        public string FirstName { get; set; }

        [XmlElement("last-name")]
        public string LastName { get; set; }

        [XmlElement("headline")]
        public string headLine { get; set; }

        [XmlElement("site-standard-profile-request")]
        public string ProfileUrl { get; set; }

        [XmlElement("picture-url")]
        public string ImagerUrl { get; set; }
    }
}
