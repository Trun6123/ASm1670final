using System.Diagnostics;
using ASm1670final.Models;
using Microsoft.AspNetCore.Mvc;
using ASm1670final.Data;
using Microsoft.EntityFrameworkCore;

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
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}