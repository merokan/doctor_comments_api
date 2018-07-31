Group.create(name: "1")
Group.create(name: "2")
Group.create(name: "3")
Group.create(name: "4")
Group.create(name: "5")


Doctor.create(name: "Dr. Jones", address: "123 Olive Rd.", city: "Burbank", state: "CA", latitude: "10.100", longitude: "01.101", group_id: "1")
Doctor.create(name: "Dr. Howard", address: "456 1st St.", city: "Los Angeles", state: "CA", latitude: "10.100", longitude: "01.101", group_id: "1")
Doctor.create(name: "Dr. Dern", address: "111 East Ave.", city: "San Ramon", state: "CA", latitude: "10.100", longitude: "01.101", group_id: "5")
Doctor.create(name: "Dr. Smith", address: "222 Apple St.", city: "San Francisco", state: "CA", latitude: "10.100", longitude: "01.101", group_id: "3")
Doctor.create(name: "Dr. Keegan", address: "333 Cherry Rd.", city: "Chico", state: "CA", latitude: "10.100", longitude: "01.101", group_id: "2")

Author.create(name: "Joe")
Author.create(name: "Ashley")
Author.create(name: "Andrew")
Author.create(name: "Bob")
Author.create(name: "Stacy")

Comment.create(comment_body: "Great doctor", rating: "5", author_id: "1", doctor_id: "1")
Comment.create(comment_body: "OK doctor", rating: "3", author_id: "2", doctor_id: "1")
Comment.create(comment_body: "I will definitely go back to this doctor!", rating: "5", author_id: "1", doctor_id: "2")
Comment.create(comment_body: "Great doctor", rating: "5", author_id: "3", doctor_id: "2")
Comment.create(comment_body: "Not bad!", rating: "4", author_id: "4", doctor_id: "3")
Comment.create(comment_body: "Won't go back", rating: "1", author_id: "4", doctor_id: "4")
Comment.create(comment_body: "Will go back", rating: "4", author_id: "1", doctor_id: "5")





