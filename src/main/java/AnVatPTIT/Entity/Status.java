package AnVatPTIT.Entity;

public class Status {
	private int id;
	private String name;

	public Status() {
		super();
	}
	
	public Status(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
