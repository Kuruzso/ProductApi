﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using ProductApi.Models;

namespace ProductApi.Controllers
{
    [Route("product")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        Connect conn = new();
        [HttpGet]
        public List<Product> Get()
        {
            List<Product> products = new List<Product>();


            conn.Connection.Open();

            string sql = "SELECT * FROM products";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            do
            {
                var result = new Product
                {
                    Id = reader.GetGuid(0),
                    Name = reader.GetString(1),
                    Price = reader.GetInt32(2),
                    CreatedTime = reader.GetDateTime(3),
                };
                products.Add(result);
            }
            while (reader.Read());
            conn.Connection.Close();


            return products;
        }
        [HttpPost]
        public IActionResult Post([FromBody] Product product)
        {
            if (product == null)
            {
                return BadRequest("Product data is required.");
            }

            try
            {
                conn.Connection.Open();

                // SQL for inserting the product
                string sql = "INSERT INTO products (Name, Price, CreatedTime) VALUES (@Name, @Price, NOW());";

                MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
                cmd.Parameters.AddWithValue("@Name", product.Name);
                cmd.Parameters.AddWithValue("@Price", product.Price);
              

                // ExecuteNonQuery for INSERT
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                // Handle exception (log it, etc.)
                return StatusCode(500, "Internal server error: " + ex.Message);
            }
            finally
            {
                conn.Connection.Close();
            }

            return Ok("Product inserted successfully.");
        }
        [HttpPut("{id}")]
        public IActionResult Put(Guid id, [FromBody] Product product)
        {
            if (product == null)
            {
                return BadRequest("Product data is required.");
            }

            try
            {
                conn.Connection.Open();

                // SQL a termék frissítésére
                string sql = "UPDATE products SET Name = @Name, Price = @Price WHERE Id = @Id;";

                MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", product.Name);
                cmd.Parameters.AddWithValue("@Price", product.Price);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected == 0)
                {
                    return NotFound("Product not found.");
                }
            }
            catch (Exception ex)
            {
                // Hiba kezelése (naplózás stb.)
                return StatusCode(500, "Internal server error: " + ex.Message);
            }
            finally
            {
                conn.Connection.Close();
            }

            return Ok("Product updated successfully.");
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(Guid id)
        {
            try
            {
                conn.Connection.Open();

                // SQL a termék törlésére
                string sql = "DELETE FROM products WHERE Id = @Id;";

                MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
                cmd.Parameters.AddWithValue("@Id", id);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected == 0)
                {
                    return NotFound("Product not found.");
                }
            }
            catch (Exception ex)
            {
                // Hiba kezelése (naplózás stb.)
                return StatusCode(500, "Internal server error: " + ex.Message);
            }
            finally
            {
                conn.Connection.Close();
            }

            return Ok("Product deleted successfully.");
        }



    }
}
