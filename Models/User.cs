using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DemoWebCoreAPI.Models
{
    public class User
    {
        public int Id { get; set; }
        public string EmpFname { get; set; }
        public string EmpLname { get; set; }
        public string Department { get; set; }
        public string Project { get; set; }
        public string Address { get; set; }
        public string DOB { get; set; }
        public string Gender { get; set; }
        public string Position { get; set; }
        public string DOJ { get; set; }
        public string Salrey { get; set; }
    }
}
