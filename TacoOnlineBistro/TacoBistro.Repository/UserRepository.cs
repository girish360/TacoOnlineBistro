using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;

namespace TacoBistro.Repository
{
    public class UserRepository
    {
        #region Methods
        public List<User> ReadAll()
        {
            List<User> Users = new List<User>();
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Users_ReadAll";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                User user = new User();
                                user.UserId = reader.GetGuid(reader.GetOrdinal("UserId"));
                                user.UserName = reader.GetString(reader.GetOrdinal("UserName"));
                                user.PassWord = reader.GetString(reader.GetOrdinal("PassWord"));
                                user.FirstName = reader.GetString(reader.GetOrdinal("FirstName"));
                                user.LastName = reader.GetString(reader.GetOrdinal("LastName"));
                                user.Email = reader.GetString(reader.GetOrdinal("Email"));
                                user.Phone = reader.GetString(reader.GetOrdinal("Phone"));
                                Users.Add(user);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }

            }
            return Users;
        }

        public void Insert(User user)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Users_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@UserId", user.UserId));
                        command.Parameters.Add(new SqlParameter("@UserName", user.UserName));
                        command.Parameters.Add(new SqlParameter("@PassWord", user.PassWord));
                        command.Parameters.Add(new SqlParameter("@FirstName", user.FirstName));
                        command.Parameters.Add(new SqlParameter("@LastName", user.LastName));
                        command.Parameters.Add(new SqlParameter("@Email", user.Email));
                        command.Parameters.Add(new SqlParameter("@Phone", user.Phone));

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                    
                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void Update(User user)   
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Users_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@UserId", user.UserId));
                        command.Parameters.Add(new SqlParameter("@UserName", user.UserName));
                        command.Parameters.Add(new SqlParameter("@PassWord", user.PassWord));
                        command.Parameters.Add(new SqlParameter("@FirstName", user.FirstName));
                        command.Parameters.Add(new SqlParameter("@LastName", user.LastName));
                        command.Parameters.Add(new SqlParameter("@Email", user.Email));
                        command.Parameters.Add(new SqlParameter("@Phone", user.Phone));
                        
                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        public void Delete(User user)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Users_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@UserId", user.UserId));
                        

                        connection.Open();
                        command.ExecuteNonQuery();
                    }

                }
                catch (SqlException sqlEx)
                {
                    Console.WriteLine("There was an SQL error: {0}", sqlEx.ToString());
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        //Not working yet !!!
        public void ReadById(User user)
        {
            
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Users_ReadById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;
                        command.Parameters.Add(new SqlParameter("@UserId", user.UserId));

                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                
                                user.UserId = reader.GetGuid(reader.GetOrdinal("UserId"));
                                   
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }

            }
            
        }

        #endregion
    }
}
