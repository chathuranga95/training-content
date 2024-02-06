import ballerina/io;
table<Room> key(number) rooms;

public configurable string room_details_file = ?;

function init() returns error? {
    json roomsJson = check io:fileReadJson(room_details_file);
    rooms = check roomsJson.cloneWithType();
}



