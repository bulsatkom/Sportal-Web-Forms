using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Data
{
    public class KomentariForTeams
    {
        public int Id { get; set; }

        [Required]
        public string User { get; set; }

        [Required]
        [MinLength(3)]
        [MaxLength(500)]
        public string Message { get; set; }

        public DateTime Date { get; set; }

        public string team { get; set; }
    }
}
