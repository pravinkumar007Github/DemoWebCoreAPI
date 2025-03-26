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
                            users.Position = dt.Rows[i]["EmpPosition"].ToString();
                            users.DOJ = dt.Rows[i]["DateOfJoining"].ToString();
                            users.Salrey = dt.Rows[i]["Salray"].ToString();
                            UserList.Add(users);
                        }
                        response.message = "Data Fetched Success";
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

        [HttpPost]
        [Route("InsertEmpDetails")]

        public string InsertEmpData([FromBody] User user)
        {
            AppContext.SetSwitch("Switch.Microsoft.Data.SqlClient.EnableSqlServerPerformanceCounters", false);
            string connectionString = "Server=PRAVIN_LAPTOP\\SQLEXPRESS;Database=EmployeeDB;User Id=sa;Password=pass@word1;Encrypt=True;TrustServerCertificate=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_Emp_Data", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Flag", SqlDbType.VarChar).Value = user.Flag;
                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = Convert.ToInt32(user.Id);
                    cmd.Parameters.Add("@Fname", SqlDbType.VarChar).Value = user.EmpFname;
                    cmd.Parameters.Add("@Lname", SqlDbType.VarChar).Value = user.EmpLname;
                    cmd.Parameters.Add("@Department", SqlDbType.VarChar).Value = user.Department;
                    cmd.Parameters.Add("@Project", SqlDbType.VarChar).Value = user.Project;
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = user.Address;
                    cmd.Parameters.Add("@Dob", SqlDbType.VarChar).Value = user.DOB;
                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = user.Gender;
                    cmd.Parameters.Add("@EmpPosition", SqlDbType.VarChar).Value = user.Position;
                    cmd.Parameters.Add("@Doj", SqlDbType.VarChar).Value = user.DOJ;
                    cmd.Parameters.Add("@Salarey", SqlDbType.VarChar).Value = user.Salrey;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = user.Email;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Response response = new Response();
                    if (dt.Rows.Count > 0)
                    {
                        response.dataResponseCode = Convert.ToInt32(dt.Rows[0]["dataResponseCode"]);
                        if(response.dataResponseCode == 1)
                        {
                            response.statusCode = 200;
                            response.message = "Data Added Success";
                            return JsonConvert.SerializeObject(response);
                        }
                        else if(response.dataResponseCode == 2)
                        {
                            response.statusCode = 200;
                            response.message = "Data Updated Success";
                            return JsonConvert.SerializeObject(response);
                        }
                        else if(response.dataResponseCode == 3)
                        {
                            response.statusCode = 200;
                            response.message = "Email Already Exist";
                            return JsonConvert.SerializeObject(response);
                        }
                        else
                        {
                            response.statusCode = 200;
                            response.message = "Duplicate Data Added";
                            return JsonConvert.SerializeObject(response);
                        }
                     
                    }
                    else
                    {
                        response.statusCode = 100;
                        response.message = "Data Insert Failure";
                        return JsonConvert.SerializeObject(response);
                    }

                }

            }
        }
    }
}
