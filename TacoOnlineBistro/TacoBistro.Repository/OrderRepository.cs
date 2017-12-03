using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TacoBistro.Models;
using System.Data.SqlClient;

namespace TacoBistro.Repository
{
    public class OrderRepository
    {
        #region Methods
        public List<Order> ReadAll()
        {
            List<Order> Orders = new List<Order>();
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Orders_ReadAll";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Order order = new Order();
                                order.OrderId = reader.GetGuid(reader.GetOrdinal("OrderId"));
                                order.UserId = reader.GetGuid(reader.GetOrdinal("UserId"));
                                order.TotalAmount = reader.GetDecimal(reader.GetOrdinal("TotalAmount"));
                                order.DeliveryAdress = reader.GetString(reader.GetOrdinal("DeliveryAdress"));
                                order.Comments = reader.GetString(reader.GetOrdinal("Comments"));
                                order.DeliveryStatus = reader.GetBoolean(reader.GetOrdinal("DeliveryStatus"));
                                order.OrderDate = reader.GetDateTime(reader.GetOrdinal("OrderDate"));
                                Orders.Add(order);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("There was an error: {0}", ex.ToString());
                }

            }
            return Orders;
        }

        public void Insert(Order order)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Orders_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderId", order.OrderId));
                        command.Parameters.Add(new SqlParameter("@UserId", order.UserId));
                        command.Parameters.Add(new SqlParameter("@TotalAmount", order.TotalAmount));
                        command.Parameters.Add(new SqlParameter("@DeliveryAdress", order.DeliveryAdress));
                        command.Parameters.Add(new SqlParameter("@Comments", order.Comments));
                        command.Parameters.Add(new SqlParameter("@DeliveryStatus", order.DeliveryStatus));
                        command.Parameters.Add(new SqlParameter("@OrderDate", order.OrderDate));

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

        public void Update(Order order)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Orders_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderId", order.OrderId));
                        command.Parameters.Add(new SqlParameter("@UserId", order.UserId));
                        command.Parameters.Add(new SqlParameter("@TotalAmount", order.TotalAmount));
                        command.Parameters.Add(new SqlParameter("@DeliveryAdress", order.DeliveryAdress));
                        command.Parameters.Add(new SqlParameter("@Comments", order.Comments));
                        command.Parameters.Add(new SqlParameter("@DeliveryStatus", order.DeliveryStatus));
                        command.Parameters.Add(new SqlParameter("@OrderDate", order.OrderDate));

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

        public void Delete(Order order)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.Orders_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderId", order.OrderId));
                        

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
