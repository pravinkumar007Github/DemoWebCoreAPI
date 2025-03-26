using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DemoWebCoreAPI.Models
{
    public class Response
    {
        public int statusCode { get; set; }

        public int dataResponseCode { get; set;}
        public string message { get; set; }
        public List<User> users { get; set; }
   
    }
}
