resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.pubsub1.id}"
  route_table_id = "${aws_route_table.pub-route.id}"
}

resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.pubsub2.id}"
  route_table_id = "${aws_route_table.pub-route.id}"
}

resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.privsub1.id}"
  route_table_id = "${aws_route_table.priv-route.id}"
}

resource "aws_route_table_association" "d" {
  subnet_id      = "${aws_subnet.privsub2.id}"
  route_table_id = "${aws_route_table.priv-route.id}"
}