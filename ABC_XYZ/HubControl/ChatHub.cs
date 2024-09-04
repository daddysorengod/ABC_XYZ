using Microsoft.AspNetCore.SignalR;
using ObjectInterface.Message;

namespace ABC_XYZ.HubControl
{
    public class ChatHub : Hub
    {
        public async Task SendMessage(string user, string message)
        {
            await Clients.All.SendAsync("ReceiveMessage", user, message);
        }

        
    }
}
