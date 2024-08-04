using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Repositories
{
    public abstract class RepositoryDictionary<TKey, TValue>
    {
        // ReSharper disable once StyleCop.SA1304
        protected readonly Dictionary<TKey, TValue> _repoDictionary = new Dictionary<TKey, TValue>();

        // ReSharper disable once StyleCop.SA1304
        protected readonly object _sync = new object();

        public virtual Dictionary<TKey, TValue> GetRepository()
        {
            lock (_sync)
            {
                return _repoDictionary.ToDictionary(k => k.Key, v => v.Value);
            }
        }

        public virtual bool ContainsKey(TKey key)
        {
            lock (_sync)
            {
                return _repoDictionary.ContainsKey(key);
            }
        }

        public virtual TValue GetValueByKey(TKey key)
        {
            lock (_sync)
            {
                if (_repoDictionary.ContainsKey(key))
                    return _repoDictionary[key];
                return default;
            }
        }

        public virtual void AddOrUpdate(TKey key, TValue value)
        {
            lock (_sync)
            {
                _repoDictionary[key] = value;
            }
        }

        public virtual int Count()
        {
            lock (_sync)
            {
                return _repoDictionary.Count;
            }
        }

        public virtual Dictionary<TKey, TValue>.KeyCollection GetKeys()
        {
            lock (_sync)
            {
                return _repoDictionary.Keys;
            }
        }

        public virtual Dictionary<TKey, TValue>.ValueCollection GetValues()
        {
            lock (_sync)
            {
                return _repoDictionary.Values;
            }
        }

        public virtual void DeleteKey (TKey key)
        {
            lock (_sync)
            {
                if (_repoDictionary.ContainsKey(key))
                {
                    _repoDictionary.Remove(key);
                }
            }
        }
    }
}
