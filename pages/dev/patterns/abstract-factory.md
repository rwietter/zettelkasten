# Abstract Factory

O Abstract Factory é um padrão de projeto de software que fornece uma interface para criar famílias de objetos relacionados ou dependentes sem especificar suas classes concretas.

```typescript
// Databases
enum DocumentDB {
  MongoDB,
  Cassandra,
  DynamoDB,
  RavenDB,
  CouchDB,
  Redis,
  Riak,
}

// Interface
interface IDocumentDBFactory {
  createCollection(): void;
}

// Abstract factory
abstract class DocumentDBFactory {
  public static CreateDocumentDB(db: DocumentDB): IDocumentDBFactory {
    switch (db) {
      case DocumentDB.MongoDB:
        return new Mongo();
      case DocumentDB.Cassandra:
        return new Cassandra();
      default:
        return new Mongo();
    }
  }
}

class Mongo implements IDocumentDBFactory {
  createCollection() { }
}
class Cassandra implements IDocumentDBFactory {
  createCollection() { }
}

class WorkerDB {
  private _db: IDocumentDBFactory;
  constructor(db: IDocumentDBFactory) {
    this._db = db;
  }

  public get db(): IDocumentDBFactory {
    return this._db;
  }
}

// Usage
const worker = new WorkerDB(DocumentDBFactory.CreateDocumentDB(DocumentDB.MongoDB));
worker.db.createCollection();
```
