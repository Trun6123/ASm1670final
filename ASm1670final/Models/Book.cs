namespace ASm1670final.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string? BookName { get; set; }
        public string? Description { get; set; }
        public DateTime DateAdd { get; set; }
        public double Price { get; set; }
        public string UrlImage { get; set; }
        public int CategoryId { get; set; }
        public virtual Category? Category { get; set; }
    }
}
