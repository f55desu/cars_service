using System.ComponentModel.DataAnnotations;

namespace CarsService.Tables
{
    class Service
    {
        [Key]
        public int _service_id { get; set; }
        public int _type_of_service { get; set; }
    }
}
