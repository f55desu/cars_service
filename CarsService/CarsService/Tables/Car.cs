using System.ComponentModel.DataAnnotations;

namespace CarsService.Tables
{
    class Car
    {
        [Key]
        public int _car_id { get; set; }
        public string _gov_number { get; set; }
        public string _mark { get; set; }
        public string _model{ get; set; }
        public string _colour { get; set; }
        public int _year_of_issue { get; set; }
        public string _owner_name { get; set; }
        public int _id_service { get; set; }
        public int _id_repair { get; set; }
    }
}
