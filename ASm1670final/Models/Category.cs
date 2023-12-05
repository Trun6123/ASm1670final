using System.ComponentModel.DataAnnotations;

namespace ASm1670final.Models
{
    public class Category
    {
        public int Id { get; set; }
        [Display(Name = "Category Name")]
        public string CategoryName { get; set; }
        public virtual ICollection<Book>? Book { get; set; }
    }
}
