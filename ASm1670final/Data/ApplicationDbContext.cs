using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ASm1670final.Models;

namespace ASm1670final.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<ASm1670final.Models.Book>? Book { get; set; }
        public DbSet<ASm1670final.Models.Category>? Category { get; set; }
        public DbSet<ASm1670final.Models.Order>? Order { get; set; }
    }
}