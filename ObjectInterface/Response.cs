namespace ObjectInterface
{
    public class Response<T>
    {
        public int Code { get; set; }
        public string Message { get; set; } = String.Empty;
        public T? Source { get; set; } 

    }
}