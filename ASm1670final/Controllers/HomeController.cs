using System.Diagnostics;
using ASm1670final.Models;
using Microsoft.AspNetCore.Mvc;
using ASm1670final.Data;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;

namespace ASm1670final.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _db;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext db)
        {
            this._db = db;
            _logger = logger;
        }

        public async Task<IActionResult> Index(int category, string searchString)
        {

            var categories = GetCategories();
            if (_db.Book == null)
            {
                return Problem("Entity set 'MvcMovieContext.Movie'  is null.");
            }
            
            var books = from m in _db.Book.Include(b => b.Category)
                        select m;
            if (category > 0)
            {
                books = books.Where(b => b.CategoryId == category);
            }
            if (!String.IsNullOrEmpty(searchString))
            {
                books = books.Where(s => s.BookName!.Contains(searchString));
            }
            ViewBag.Categories = categories;
            ViewBag.Book = books;
            return View(await books.ToListAsync());
            
        }
        private List<Category> GetCategories()
        {
            var categories = _db.Category.ToList();
            return categories;
        }

        private List<Book> GetAllProducts()
        {
            return _db.Book.Include(b => b.Category).ToList();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Details(int id)
        {
            var book = GetDetailProduct(id);

            if (book == null)
            {
                return RedirectToAction(nameof(NotFoundBook));
            }
            return View(book);
        }

        public Book GetDetailProduct(int id)
        {
            var books = _db.Book.Find(id);
            return books;
        }
        public IActionResult NotFoundBook()
        {
            return View();
        }
        public ActionResult IndexCart()
        {
            var _book = GetAllProducts();
            ViewBag.book = _book;
            return View();
        }
        public IActionResult addCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");//get key cart
            if (cart == null)
            {
                var book = GetDetailProduct(id);
                List<Cart> listCart = new List<Cart>()
               {
                   new Cart
                   {
                       Book = book,
                       Quantity = 1
                   }
               };
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(listCart));

            }
            else
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                bool check = true;
                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Book.Id == id)
                    {
                        dataCart[i].Quantity++;
                        check = false;
                    }
                }
                if (check)
                {
                    dataCart.Add(new Cart
                    {
                        Book = GetDetailProduct(id),
                        Quantity = 1
                    });
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
            }

            return RedirectToAction(nameof(Index));
        }
        public IActionResult ListCart()
        {
            var cart = HttpContext.Session.GetString("cart");//get key cart
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                if (dataCart.Count > 0)
                {
                    ViewBag.carts = dataCart;
                    return View();
                }
            }
            return RedirectToAction(nameof(Index));
        }
        public IActionResult updateCart(int id, int quantity)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);
                if (quantity > 0)
                {
                    for (int i = 0; i < dataCart.Count; i++)
                    {
                        if (dataCart[i].Book.Id == id)
                        {
                            dataCart[i].Quantity = quantity;
                        }
                    }
                    HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
                }
                else
                {
                    deleteCart(id);
                }
                var cart2 = HttpContext.Session.GetString("cart");
                return Ok(quantity);
            }
            return BadRequest();

        }
        public IActionResult deleteCart(int id)
        {
            var cart = HttpContext.Session.GetString("cart");
            if (cart != null)
            {
                List<Cart> dataCart = JsonConvert.DeserializeObject<List<Cart>>(cart);

                for (int i = 0; i < dataCart.Count; i++)
                {
                    if (dataCart[i].Book.Id == id)
                    {
                        dataCart.RemoveAt(i);
                    }
                }
                HttpContext.Session.SetString("cart", JsonConvert.SerializeObject(dataCart));
                return RedirectToAction(nameof(ListCart));
            }
            return RedirectToAction(nameof(Index));
        }
        public List<Cart> GetCartItems()
        {

            var session = HttpContext.Session;
            string jsoncart = session.GetString("cart");
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<Cart>>(jsoncart);
            }
            return new List<Cart>();
        }
        [Authorize(Roles = "User,Admin")]
        public async Task<IActionResult> CheckOut()
        {
            var cart = GetCartItems();
            // tạo cấu trúc db lưu lại đơn hàng và xóa cart khỏi session
            for (int i = 0; i < cart.Count; i++)
            {
                Order order = new Order
                {
                    Name = User.FindFirstValue(ClaimTypes.Email),
                    Quantity = cart[i].Quantity,
                    Price = cart[i].Book.Price,
                    OrderDate = DateTime.Now,
                    Total = cart[i].Book.Price * cart[i].Quantity,
                    Book_Name = cart[i].Book.BookName
                };
                _db.Order.Add(order);
                await _db.SaveChangesAsync();
            }
            HttpContext.Session.Remove("cart");
            return RedirectToAction("Index");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}