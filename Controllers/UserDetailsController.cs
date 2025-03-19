using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using Microsoft.Data.SqlClient;
using DemoWebCoreAPI.Models;
using Newtonsoft.Json;

namespace DemoWebCoreAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserDetailsController : ControllerBase
    {
        public readonly IConfiguration _configuration;
        public UserDetailsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        [HttpGet]
        [Route("GetAllUserDetails")]
        public string GetUserDetails()
        {
            AppContext.SetSwitch("Switch.Microsoft.Data.SqlClient.EnableSqlServerPerformanceCounters", false);
            string connectionString = "Server=PRAVIN_LAPTOP\\SQLEXPRESS;Database=EmployeeDB;User Id=sa;Password=pass@word1;Encrypt=True;TrustServerCertificate=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Get_User_Details", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Response response = new Response();
                    List<User> UserList = new List<User>();
                    if (dt.Rows.Count > 1)
                    {
                        response.statusCode = 200;
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            User users = new User();
                            users.Id = Convert.ToInt32(dt.Rows[i]["ID"]);
                            users.EmpFname = dt.Rows[i]["EmpFname"].ToString();
                            users.EmpLname = dt.Rows[i]["EmpLname"].ToString();
                            users.Project = dt.Rows[i]["Project"].ToString();
                            users.Department = dt.Rows[i]["Department"].ToString();
                            users.Address = dt.Rows[i]["Address"].ToString();
                            users.DOB = dt.Rows[i]["DOB"].ToString();
                            users.Gender = dt.Rows[i]["Gender"].ToString();
  
                            UserList.Add(users);
                        }
                        response.message = "Success";
                        response.users = UserList;
                    }

                    if (UserList.Count > 0)
                    {
                        return JsonConvert.SerializeObject(response);
                    }
                    else
                    {
                        response.statusCode = 100;
                        response.message = "No Data Found";
                        return JsonConvert.SerializeObject(response);
                    }

                }

            }
          
        }
    }
}
