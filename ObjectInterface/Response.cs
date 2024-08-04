namespace ObjectInterface
{
    public class Response<T>
    {
        public decimal Code { get; set; }
        public string Message { get; set; } = String.Empty;
        public T Source { get; set; }
    }
}