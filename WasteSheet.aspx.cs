using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EndofDay
{
    public partial class WebForm3 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_TextChanged(object sender, EventArgs e)
        {
            outputBox.Text = "";

            if (applecranmuffinAmount.Text != "0")

            {
                outputBox.Text += $"{applecranMuffin.Text} - {applecranmuffinAmount.Text} \r\n";
            }
            if (tripleberrymuffinAmount.Text != "0")
            {
                outputBox.Text += $"{tripleberryMuffin.Text} - {tripleberrymuffinAmount.Text} \r\n";
            }
            if (cheddarsconeAmount.Text != "0")
            {
                outputBox.Text += $"{cheddarScone.Text} - {cheddarsconeAmount.Text} \r\n";
            }
            if (raspberrysconeAmount.Text != "0")
            {
                outputBox.Text += $"{raspberryScone.Text} - {raspberrysconeAmount.Text} \r\n";
            }
            if (croissantAmount.Text != "0")
            {
                outputBox.Text += $"{croissant.Text} - {croissantAmount.Text} \r\n";
            }

            if (hamandgruyereAmount.Text != "0")
            {
                outputBox.Text += $"{hamandgruyere.Text} - {hamandgruyereAmount.Text} \r\n";
            }
            if (cherrylemonloafAmount.Text != "0")
            {
                outputBox.Text += $"{cherrylemonLoaf.Text} - {cherrylemonloafAmount.Text} \r\n";
            }
            if (quinoaloafAMount.Text != "0")
            {
                outputBox.Text += $"{quinoaLoaf.Text} - {quinoaloafAMount.Text} \r\n";
            }
            if (gingercookieAmount.Text != "0")
            {
                outputBox.Text += $"{gingerCookie.Text} - {gingercookieAmount.Text} \r\n";
            }
            if (chocolatechipAmount.Text != "0")
            {
                outputBox.Text += $"{chocolatechipCookie.Text} - {chocolatechipAmount.Text} \r\n";
            }
            if (granolacookieAmount.Text != "0")
            {
                outputBox.Text += $"{granolaCookie.Text} - {granolacookieAmount.Text} \r\n";
            }
           if (chiabiteAmount.Text != "0")
            {
                outputBox.Text += $"{chiaBites.Text} - {chiabiteAmount.Text} \r\n";
            }
            if (pbbiteAmount.Text != "0")
            {
                outputBox.Text += $"{pbBites.Text} - {pbbiteAmount.Text} \r\n";
            }
             if (pbonAmount.Text != "0")
            {
                outputBox.Text += $"{pbOats.Text} - {pbonAmount.Text} \r\n";
            }
             if (eggcheeseAmount.Text != "0")
            {
                outputBox.Text += $"{eggcheeseWrap.Text} - {eggcheeseAmount.Text} \r\n";
            }
             if (eggbaconAmount.Text != "0")
            {
                outputBox.Text += $"{eggbaconWrap.Text} - {eggbaconAmount.Text} \r\n";
            }
             if (eggsausageAmount.Text != "0")
            {
                outputBox.Text += $"{eggsausageWrap.Text} - {eggsausageAmount.Text} \r\n";
            }
             if (chickpeaAmount.Text != "0")
            {
                outputBox.Text += $"{chickpeaWrap.Text} - {chickpeaAmount.Text} \r\n";
            }
             if (beanburritoAmount.Text != "0")
            {
                outputBox.Text += $"{beanBurrito.Text} - {beanburritoAmount.Text} \r\n";
            }
             if (cococurryAmount.Text != "0")
            {
                outputBox.Text += $"{cococurryWrap.Text} - {cococurryAmount.Text} \r\n";
            }




        }
    }
}