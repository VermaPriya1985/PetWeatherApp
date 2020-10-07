using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
namespace PetWeatherApp
{
    public partial class AddPet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("WeatherApp.aspx");
        }
            protected void btnsubmit_Click(object sender, EventArgs e)
        {

            try
            {
                Random random = new Random();
                int id = random.Next(500);
                var httpWebRequest = (HttpWebRequest)WebRequest.Create("http://localhost:8080/pets/add/new");
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "POST";
                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    /* string json = "{\"id\":990," +
                                     "\"name\":\"TEST\"," +
                                     "\"type\":\"AA\"," +
                                     "\"breed\":\"BB\"," +
                                     "\"location\":\"LDH\"," +
                                     "\"latitude\":9," +
                                     "\"longitude\":8}";C:\Users\abc\source\repos\PetWeatherApp\PetWeatherApp\WeatherApp.aspx

         */
                    //var json1 = "{'id': '" + jsonid + "'}";
                    // "\"latitude\":" + txtlatitude.Text + "," +
                    // "\"longitude\":" + txtlongitude.Text + "}";


                    // string json = "{\"id\":55," +
                    string json = "{\"id\":" + id + "," +
                                     "\"name\":\"" + txtname.Text + "\"," +
                                     "\"type\":\"" + drptype.SelectedValue.ToString() + "\"," +
                                     "\"breed\":\"" + drpbreed.SelectedValue.ToString() + "\"," +
                                     "\"location\":\"" + txtlocation.Text + "\"," +
                                     "\"latitude\":\"" + txtlatitude.Text + "\"," +
                                     "\"longitude\":\"" + txtlongitude.Text + "\"}";


                    streamWriter.Write(json);
                }

                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    var result = streamReader.ReadToEnd();
                    lblmsg.Text = "Pet saved successfully! Pet ID is: " + result;
                    // Response.Write(result);
                }
            }
            catch(Exception ex)
            {

                lblmsg.Text = ex.ToString();
            }
        }
    }
}