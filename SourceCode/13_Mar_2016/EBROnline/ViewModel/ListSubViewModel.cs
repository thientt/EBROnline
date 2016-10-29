
using System.ComponentModel.DataAnnotations;
namespace EBROnline.ViewModel
{
    public class ListSubViewModel
    {
        public int Id { get; set; }

        [MaxLength(50)]
        public string StackDieId { get; set; }

        [MaxLength(50)]
        public string StackDiePMPN { get; set; }

        public double StackDieQty { get; set; }

        [MaxLength(50)]
        public string StackDieWaferNumbers { get; set; }

        [MaxLength(50)]
        public string LotNumber { get; set; }

        [MaxLength(50)]
        public string BatchLotNumber { get; set; }

        public double WaferQty { get; set; }

        public double BuildQuality { get; set; }

        [MaxLength(225)]
        public string Comment { get; set; }

        public int DashboardId { get; set; }

        public bool IsAllow { get; set; }
    }
}