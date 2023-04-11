domains  
	town = symbol  
	distance = integer  

predicates  
	nondeterm road(town, town, distance)  
	nondeterm route(town, town, distance)  

clauses  
	road("A", "B", 30).  
	road ("C", "A", 30).  
	road ("B", "C", 145).  
	road ("B", "E", 90).  
	road ("C", "E", 55).  
	route(Townl, Town2, Distance) :- road(Townl, Town2, Distance).  
	route(Townl, Town2, Distance) :- road(Townl, X, Distl), route(X, Town2, Dist2), 
	Distance=Distl+Dist2,!.  

goal  
	route ("A", "E", X),  
	write("Distance from A to E is ",X), nl.
	
	
	
	
