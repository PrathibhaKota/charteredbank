//sample GraphQL queries
const getAllJobsQuery ="""
query getJobs{
	jobs{
		id
		title
		applyUrl
		locationNames
		userEmail
		createdAt
	}
}
""";


const addUser ="""
mutation addTodo(\$title:String!){
        add(title:\$title){
        id
        title
        completed
        }
    }
""";