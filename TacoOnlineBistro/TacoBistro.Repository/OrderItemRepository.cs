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
    public class OrderItemRepository : BaseRepository<OrderItem>
    {
        #region Methods
        public List<OrderItem> ReadAll()
        {
            return ReadAll("dbo.OrderItem_ReadAll");
        }

        protected override OrderItem GetModelFromReader(SqlDataReader reader)
        {
            OrderItem orderitem = new OrderItem();
            orderitem.OrderItemId = reader.GetGuid(reader.GetOrdinal("OrderItemId"));
            orderitem.OrderId = reader.GetGuid(reader.GetOrdinal("OrderId"));
            orderitem.ProductId = reader.GetGuid(reader.GetOrdinal("ProductId"));
            orderitem.UnitPrice = reader.GetDecimal(reader.GetOrdinal("UnitPrice"));
            orderitem.Quantity = reader.GetDecimal(reader.GetOrdinal("Quantity"));
           
            return orderitem;
        }

        public void Insert(OrderItem orderItem)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.OrderItem_Create";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderItemId", orderItem.OrderItemId));
                        command.Parameters.Add(new SqlParameter("@OrderId", orderItem.OrderId));
                        command.Parameters.Add(new SqlParameter("@ProductId", orderItem.ProductId));
                        command.Parameters.Add(new SqlParameter("@UnitPrice", orderItem.UnitPrice));
                        command.Parameters.Add(new SqlParameter("@Quantity", orderItem.Quantity));
                       
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

        public void Update(OrderItem orderItem)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.OrderItem_UpdateById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderItemId", orderItem.OrderItemId));
                        command.Parameters.Add(new SqlParameter("@OrderId", orderItem.OrderId));
                        command.Parameters.Add(new SqlParameter("@ProductId", orderItem.ProductId));
                        command.Parameters.Add(new SqlParameter("@UnitPrice", orderItem.UnitPrice));
                        command.Parameters.Add(new SqlParameter("@Quantity", orderItem.Quantity));

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

        public void Delete(OrderItem orderItem)
        {
            string connectionString = "Server=(local);Database=TacoBistro;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = connection;
                        command.CommandText = "dbo.OrderItem_DeleteById";
                        command.CommandType = System.Data.CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@OrderItemId", orderItem.OrderItemId));
                        command.Parameters.Add(new SqlParameter("@OrderId", orderItem.OrderId));
                        command.Parameters.Add(new SqlParameter("@ProductId", orderItem.ProductId));
                        command.Parameters.Add(new SqlParameter("@UnitPrice", orderItem.UnitPrice));
                        command.Parameters.Add(new SqlParameter("@Quantity", orderItem.Quantity));

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
