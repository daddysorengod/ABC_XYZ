using ABC_XYZ.HubControl;
using BusinessLayer;
using CommoLib;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using ObjectInterface;
using System.Diagnostics.Contracts;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(options =>
{
    //options.SwaggerDoc("V1", new OpenApiInfo
    //{
    //    Version = "V1",
    //    Title = "WebAPI",
    //    Description = "Product WebAPI"
    //});

    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Name = "Authorization",
        Description = "Bearer Authentication with JWT Token",
        Type = SecuritySchemeType.ApiKey
    });

    options.AddSecurityRequirement(new OpenApiSecurityRequirement {
        {
            new OpenApiSecurityScheme {
                Reference = new OpenApiReference {
                    Id = "Bearer",
                        Type = ReferenceType.SecurityScheme
                }
            },
            new string[] { }
        }
    });
});

builder.Services.AddAuthorization(auth =>
{
    auth.AddPolicy("Bearer", new AuthorizationPolicyBuilder()
        .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme‌​)
        .RequireAuthenticatedUser().Build());
});


// register Interface
builder.Services.AddScoped<IAuthBL, AuthBL>();
builder.Services.AddScoped<IUserProfileBL, UserProfileBL>();
builder.Services.AddScoped<IPostBL, PostBL>();
builder.Services.AddScoped<ICommentBL, CommentBL>();
builder.Services.AddScoped<ISocialGroupBL, SocialGroupBL>();
builder.Services.AddScoped<IUserGroupBL, UserGroupBL>();
builder.Services.AddScoped<IMessageBL, MessageBL>();
builder.Services.AddScoped<IFriendBL, FriendBL>();

builder.Services.AddSignalR();


// add cache
builder.Services.AddMemoryCache();

builder.Services.AddAuthentication(opts =>
{
    opts.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    opts.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    opts.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = false,
        ValidateIssuerSigningKey = true,
        ValidIssuer = builder.Configuration.GetSection("JWT")["ValidIssuer"],
        ValidAudience = builder.Configuration.GetSection("JWT")["ValidAudience"],
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration.GetSection("JWT")["Secret"])),
    };
});


builder.Services.AddCors(options =>
{
    options.AddPolicy(name: "AllowLocal",
      policy =>
      {
          policy
            //.WithOrigins("http://example.com", "http://www.contoso.com", "http://localhost:3000", "https://fe-social-kohl.vercel.app/")
            //  .AllowAnyOrigin()
            //  .AllowAnyHeader()
            //  .AllowAnyMethod()
            //  .WithExposedHeaders("Content-Disposition");
            .WithOrigins("http://example.com", "http://www.contoso.com", "http://localhost:3000", "https://fe-social-kohl.vercel.app/", "http://127.0.0.1:5173", "http://localhost:5173")
            .AllowAnyMethod()
            .AllowAnyHeader()
            .AllowCredentials();
      });
});

NLog.LogManager.LoadConfiguration(Path.Combine("./ConfigLog/nlog.config"));

//CommonData.GetConfig();
builder.WebHost.ConfigureAppConfiguration((hostingContext, config) =>
{
    config.AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
    config.AddEnvironmentVariables();
});
ConfigData.GetConfigData(builder.Configuration);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("AllowLocal");

//app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.MapHub<ChatHub>("chatHub");

app.Run();
