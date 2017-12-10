using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;
using TacoBistro.Repository.Core;
using System.Configuration;


namespace TacoBistro.Repository
{
    public class ProductRepository : BaseRepository<Product>
    {
        #region Methods
        public List<Product> ReadAll()
        {
            return ReadAll("dbo.Products_ReadAll");
        }

        protected override Product GetModelFromReader(SqlDataReader reader)
        {
            Product Product = new Product();
            Product.ProductId = reader.GetGuid(reader.GetOrdinal("ProductId"));
            Product.CategoryId = reader.GetGuid(reader.GetOrdinal("CategId"));
            Product.ProductName = reader.GetString(reader.GetOrdinal("ProductName"));
            Product.Description = reader.GetString(reader.GetOrdinal("Description"));
            Product.Price = reader.GetDecimal(reader.GetOrdinal("Price"));
            
            return Product;
        }


        /*
        public void Insert(Product product)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Products_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@ProductId", product.ProductId));
                        command.Parameters.Add(new SqlParameter("@CategId", product.CategoryId));
                        command.Parameters.Add(new SqlParameter("@ProductName", product.ProductName));
                        command.Parameters.Add(new SqlParameter("@Description", product.Description));
                        command.Parameters.Add(new SqlParameter("@Price", product.Price));
                       
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

        public void Update(Product product)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Products_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@ProductId", product.ProductId));
                        command.Parameters.Add(new SqlParameter("@CategId", product.CategoryId));
                        command.Parameters.Add(new SqlParameter("@ProductName", product.ProductName));
                        command.Parameters.Add(new SqlParameter("@Description", product.Description));
                        command.Parameters.Add(new SqlParameter("@Price", product.Price));

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


        public void Delete(Product product)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Products_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@ProductId", product.ProductId));
                        

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
        */
        #endregion
    }
}
