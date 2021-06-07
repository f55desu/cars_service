using System.ComponentModel.DataAnnotations;

namespace CarsService.Tables
{
    class Repair
    {
        [Key]
        public int _repair_id { get; set; }
        public string _date_of_repair { get; set; }
        public string _issue { get; set; }
        public string _repair_done { get; set; }
        public float _cost { get; set; }
    }
}
