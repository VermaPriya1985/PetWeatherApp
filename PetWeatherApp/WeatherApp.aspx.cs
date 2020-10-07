using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json.Linq;
namespace PetWeatherApp
{
    public partial class WeatherApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            CallGetPetAPI();
        }

        private void CallGetPetAPI()
        {
            try
            {



                string URL = "http://localhost:8080/pets/";
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
                request.Method = "GET";

                WebResponse webResponse = request.GetResponse();
                Stream webStream = webResponse.GetResponseStream();
                StreamReader responseReader = new StreamReader(webStream);
                string response = responseReader.ReadToEnd();

                var data = JsonConvert.DeserializeObject<List<petjson>>(response);

                grdview.DataSource = data;

                grdview.DataBind();

                responseReader.Close();

            }
            catch (Exception ex)
            {
                // Response.Write(ex.Message.ToString());
                lblerror.Text = ex.Message.ToString();
            }


        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPet.aspx");
        }

    }

}