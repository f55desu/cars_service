using CarsService.Tables;
using System.Data.Entity;

namespace CarsService
{
    public class Context : DbContext
    {
        public Context() : base("DefaultConnection") { }
        public DbSet<Cars> Cars { get; set; }
        public DbSet<Repairs> Repairs { get; set; }
        public DbSet<Services> Services { get; set; }

		private static Context instance = null;

		public static Context GetInstance()
		{
			if (instance == null)
				instance = new Context();
			return instance;
		}
	}
}