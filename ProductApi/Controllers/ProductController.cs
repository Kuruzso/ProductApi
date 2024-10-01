using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ProductApi.Controllers
{
    [Route("product")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        [HttpGet]
        public object Get()
        {

            return new { message = "Hello World!"};
        }
    }
}
