# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@EC_Office = Office.create(name: "East Coast", location: "DC")
@WC_Office = Office.create(name: "West Coast", location: "Bay Area")
@Dallas_Office = Office.create(name: "Dallas", location: "Texas")


@A1 = Role.create(title: "Associate 1", daily_rate: "2000")
@SeniorAssociate = Role.create(title: "Senior Associate", daily_rate: "4000")

@Mac = Titan.create(name: "Mac Connolly", office_id: 1, birthday: Date.parse('1996-08-18'), hire_date: Date.parse('2020-06-07'), phone: "720-227-2776", address: "1650 Wewatta St", email: "Mac.Connolly@metisstrategy.com")
@Nick = Titan.create(name: "Nick Reasner", office_id: 1, birthday: Date.parse('1996-08-18'), hire_date: Date.parse('2020-06-07'), email: "nick.reasner@metisstrategy.com")
@Client1 = Client.create(office_id: 1, name: "Client One", industry: "Technology", hq: "Some place", contact_name: "John Smith", contact_number: "555-555-5555", contact_email: "john.doe@clientone.com")

@Mac.roles << @A1
@Nick.roles << @SeniorAssociate

@Project1 = Project.create(client_id: Client.first.id, name: "First Project for Client 1", category: "Digital Transformation", subcategory: "Assessment", start: Date.parse('2020-08-15'), end: Date.parse('2020-12-05'))
@Project1.titans << @Mac
@Project1.titans << @Nick

# @Project1.sow << Sow.create(A1_prop: 175, A1_est: 150, A2_prop: 200, A2_est: 150, SA_prop: 250, SA_est: 200, MGR_prop: 30, MGR_est: 20, MD_prop: 10, MD_est: 20, VP_prop: 15, VP_est: 10, PRES_prop: 25, PRES_est: 15, EXNET_prop: 0, EXNET_est: 0, OPS_prop: 0, OPS_est: 0, INT_prop: 20, INT_est: 20)



@Sow1 = Sow.new(Associate_1_days: 10, Associate_2_days: 10, Senior_Associate_days: 10, Manager_days: 10, Managing_Director_days: 10, Vice_President_days: 10, President_days: 10, Executive_Network_days: 10, Operations_Head_days: 10, Intern_days: 10)
@Project1.sow = @Sow1
@Sow1.save
@Project1.save

@Estimate1 = Estimate.new(Associate_1_days: 5, Associate_2_days: 5, Senior_Associate_days: 5, Manager_days: 5, Managing_Director_days: 5, Vice_President_days: 5, President_days: 5, Executive_Network_days: 5, Operations_Head_days: 5, Intern_days: 5)
@Project1.estimate = @Estimate1
@Estimate1.save
@Project1.save