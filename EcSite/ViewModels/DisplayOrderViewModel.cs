using EcSite.Properties;
using System.ComponentModel.DataAnnotations;
using System.Resources;

namespace EcSite.ViewModels
{
    /// <summary>
    /// クラス名要検討。Oredrにしたほうが、プロジェクト全体で使いやすいかもしれない。など
    /// </summary>
    public class DisplayOrderViewModel
    {
        [Key]
        [Required]
        public string UserId { get; set; }

        public  List<DisplayOrder> Orders{ get; set; }

    }
}
