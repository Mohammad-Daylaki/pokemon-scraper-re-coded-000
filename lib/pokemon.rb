class Pokemon
  attr_accessor :name, :id, :db, :type

  def initialize(id,name,type,db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name,type)
  end

  def self.find(id,db)
    db.execute("SELECT * FROM pokemon")

  end
end
