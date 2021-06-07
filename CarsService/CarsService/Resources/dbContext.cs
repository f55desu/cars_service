using CarsService.Tables;
using System.Data.Entity;

namespace CarsService
{
    class Context : DbContext
    {
        public Context() : base("DefaultConnection") { }
        public DbSet<Car> Cars { get; set; }
        public DbSet<Repair> Repairs { get; set; }
        public DbSet<Service> Services { get; set; }
    }
}