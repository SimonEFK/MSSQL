DELETE FROM Clients
WHERE AddressId IN (SELECT a.Id FROM Addresses  AS a
WHERE a.Country LIKE 'C%')

DELETE FROM Addresses 
WHERE Addresses.Country LIKE 'C%'
