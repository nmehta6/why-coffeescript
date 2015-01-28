SparkNotes of http://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm

# Deriving REST (Representational State Transfer ((architectural style))

## Client-Server architectural style

- Seperation of concerns
	- Each component can evolve seperately
		- Multiple clients may consume same API
		- API can evolve with versioning to support new features while maintaining old functionality for current clients

## Stateless
### Design trade offs
	
Pro

1. Improved visibility
	- Server does not need to look elsewhere to get full context of request
2. Reliability
	- Eases the task of recovering from failures
		- Context is in request, can simply access another node or recover context
3. Scalability
	- Not tied to a specific server ^^  

Con

1. Decreased network performance
	-Repetitive data

(Internal note) We do not do this. We store the logged in user credentials on the session :(

## Cache
### Client-cache-stateless-server style

- Server imposes cache restraint 
	- a suggestion to the client

Pro

- "potential to partially or completely eliminate some interactions, improving efficiency, scalability, and user-perceived performance" 

Con

- "a cache can decrease reliability if stale data within the cache differs significantly from the data that would have been obtained had the request been sent directly to the server."

## Uniform Interface
Service is a standardized form
Decoupled and non-specific to applications that use it

# Architectural Elements

- Resource
	- May vary by time
	- Always identical semantics
	- "Manipulating Shadows"
		- Representatives of the resource
		- Can have multiple URIs to the same resource
		- Underlying implementation is not important