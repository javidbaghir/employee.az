package az.employee.util;

public enum ColumnType {
    Name(0),
    SurName(1),
    Birth_Date(2),
    Email(3),
    Phone(4),
    Mobile(5),
    Education(6),
    Position(7),
    City(8);

    private int value;

    ColumnType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static ColumnType fromColumn(int type) {
        ColumnType columnType = null;

        if (Name.value == type) {
            columnType = Name;
        } else if (SurName.value == type) {
            columnType = SurName;
        } else if (Birth_Date.value == type) {
            columnType = Birth_Date;
        } else if (Email.value == type) {
            columnType = Email;
        } else if (Phone.value == type) {
            columnType = Phone;
        } else if (Mobile.value == type) {
            columnType = Mobile;
        } else if (Education.value == type) {
            columnType = Education;
        } else if (Position.value == type) {
            columnType = Position;
        } else if (City.value == type) {
            columnType = City;
        }

        return columnType;
    }
}
