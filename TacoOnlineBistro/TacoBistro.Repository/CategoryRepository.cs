using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;
using TacoBistro.Repository.Core;

namespace TacoBistro.Repository
{
    public class CategoryRepository : BaseRepository<Category>
    {
        #region Methods
        public List<Category> ReadAll()
        {
            return ReadAll("dbo.Categories_ReadAll");
        }

        protected override Category GetModelFromReader(SqlDataReader reader)
        {
            Category category = new Category();
            category.CategoryId = reader.GetGuid(reader.GetOrdinal("CategId"));
            category.CategoryName = reader.GetString(reader.GetOrdinal("Category"));
            
            return category;
        }

        public void Insert(Category category)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Categories_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CategId", category.CategoryId));
                        command.Parameters.Add(new SqlParameter("@Category", category.CategoryName));
                        

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

        public void Update(Category category)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Categories_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CategId", category.CategoryId));
                        command.Parameters.Add(new SqlParameter("@Category", category.CategoryName));


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

        public void Delete(Category category)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Categories_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@CategId", category.CategoryId));
                        


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
        #endregion
    }
}
