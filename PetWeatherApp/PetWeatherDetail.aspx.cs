using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;
namespace PetWeatherApp
{
    public partial class PetWeatherDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            CallForecastAPI(); 

        }


        protected void btnview_Click(object sender, EventArgs e)
        {
            Response.Redirect("WeatherApp.aspx");
        }

        private void CallForecastAPI()
        {
            try
            {
                   if(Request.QueryString["id"] != "" && Request.QueryString["id"]!=null)  
                    {

                    // START CALL GET PET API BASED ON ID TO FETCH LOCATION AND NAME OF PET
                    string APIURL = "http://localhost:8080/pets/" + Request.QueryString["id"].ToString();
                    HttpWebRequest requestapi = (HttpWebRequest)WebRequest.Create(APIURL);
                    requestapi.Method = "GET";

                    WebResponse webResponseapi = requestapi.GetResponse();
                    Stream webStreamapi = webResponseapi.GetResponseStream();
                    StreamReader responseReaderapi = new StreamReader(webStreamapi);
                    string responseapi = responseReaderapi.ReadToEnd();

                    petjson petjson = new petjson();
                    petjson = JsonConvert.DeserializeObject<petjson>(responseapi);

                    // END GET PET DETAIL BASED ON ID

                    // CALL LOCATION API TO GET LOCATION KEY,4 req fire, as in trial version, limited no of requests 
                    string locationkey = CallLocationAPI(petjson.location);
                    // Response.Write(locationkey + "<br/>");
                    // string URL = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/" + locationkey + "?apikey=Rirq0UKhUvo2b0f6wLKlWTeeLtovrAo4&details=false";
                    string URL = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/" + locationkey + "?apikey=Lg2EjajZ7lRTFwUzAmxDY1eo7tXAorAG&details=false";
                    HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
                    request.Method = "GET";
                    WebResponse webResponse = request.GetResponse();
                    Stream webStream = webResponse.GetResponseStream();
                    StreamReader responseReader = new StreamReader(webStream);
                    string response = responseReader.ReadToEnd();
                    // Response.Write(response + "<br/>");
                    RootObject obj = JsonConvert.DeserializeObject<RootObject>(response);
                    // Response.Write(obj.headline.category.ToString() + "<br/>");
                    if (obj.headline.category.ToString() == "rain")
                    {
                        lblmsg.Text = "Yup! It looks like " + petjson.name + " is going to need this one in " + petjson.location + "";
                        img.Visible = true;
                        
                        
                    }
                    else
                    {
                        lblmsg.Text = "Weather: " + obj.headline.category.ToString();
                        img.Visible = false;

                    }
                    
                   
                 }
                else
                {
                    lblerror.Text = "Please provide required parameters"; 
                    
                } 
            }
            catch (Exception e)
            {
                // {"Code":"ServiceUnavailable","Message":"The allowed number of requests has been exceeded.","Reference":"/locations/v1/search?q=state%20college&apikey=Rirq0UKhUvo2b0f6wLKlWTeeLtovrAo4"}
                lblerror.Text = e.Message.ToString();
            }
        }


        private string CallLocationAPI(string location)
        {
           
                
                // string URL = "http://dataservice.accuweather.com/locations/v1/search?q=saskatoon&apikey=Rirq0UKhUvo2b0f6wLKlWTeeLtovrAo4";
                // string URL = "http://dataservice.accuweather.com/locations/v1/search?q=" + location + "&apikey=Rirq0UKhUvo2b0f6wLKlWTeeLtovrAo4";
                string URL = "http://dataservice.accuweather.com/locations/v1/search?q=" + location + "&apikey=Lg2EjajZ7lRTFwUzAmxDY1eo7tXAorAG";
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
                request.Method = "GET";
                WebResponse webResponse = request.GetResponse();
                Stream webStream = webResponse.GetResponseStream();
                StreamReader responseReader = new StreamReader(webStream);
                string response = responseReader.ReadToEnd();
                var aa = JsonConvert.DeserializeObject<List<weather>>(response);
                return aa[0].key.ToString();
                // Response.Write(aa + "</br>");
                // Response.Write(aa[0].key + "</br>");
          
        }

    }
}
 