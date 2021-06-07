using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace CarsService.Tables
{
    public class Services
    {
        [Key]
        public int _service_id { get; set; }
        public int _type_of_service { get; set; }
    }
}
