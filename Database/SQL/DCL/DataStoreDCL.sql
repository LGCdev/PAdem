Use WCAdmin
GO


--DS Schema for DataStore (permanent data storage)





--Entity//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




Create Table DS.Entity_Identity (
								EntityNo BigInt NOT NULL
								, EntityIDNo BigInt Identity(-100000000, 1) NOT NULL
								, EntityName varchar(125) NOT NULL
								, EntityType varchar(25) NOT NULL
								, EntityFEIN varchar(9) NOT NULL
								, EffectiveDate Date NOT NULL
								, EndDate Date NOT NULL

)

Create Table DS.Entity_Address(
								EntityNo BigInt Foreign Key References DS.Entity(EntityNo) NOT NULL
								, EntityAddressID BigInt Identity(-100000000, 1) NOT NULL
								, AddressType Varchar(25) NOT NULL
								, Address Varchar(125) NOT NULL
								, Address2 Varchar(125) NULL
								, City Varchar(125) NOT NULL
								, State Varchar(2) NOT NULL
								, ZIP Varchar(5) NOT NULL
								, EffectiveDate Date NOT NULL
								, EndDate Date NOT NULL
								)


Create Table DS.Entity_Contact(
								EntityNo BigInt Foreign Key References DS.Entity(EntityNo) NOT NULL
								, EntityContactNo BigInt Identity(-100000000, 1) NOT NULL
								, ContactType Varchar(25) NOT NULL
								, ContactPerson Varchar(125) NULL
								, ContactValue Varchar(250) NOT NULL

								)



--Entity//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Person//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



Create Table DS.Person_Identity(
									PersonNo BigInt NOT NULL
									, PersonIDNo BigInt Identity(-100000000, 1) NOT NULL
									, PersonName varchar(125) NOT NULL
									, PersonType varchar(25) NOT NULL
									, PersonFEIN varchar(9) NOT NULL
									, EffectiveDate Date NOT NULL
									, EndDate Date NOT NULL

									)


Create Table DS.Person_Address(
								PersonNo BigInt Foreign Key References DS.person(PersonNo) NOT NULL
								, PersonAddressID BigInt Identity(-100000000, 1) NOT NULL
								, AddressType Varchar(25) NOT NULL
								, Address Varchar(125) NOT NULL
								, Address2 Varchar(125) NULL
								, City Varchar(125) NOT NULL
								, State Varchar(2) NOT NULL
								, ZIP Varchar(5) NOT NULL
								, EffectiveDate Date NOT NULL
								, EndDate Date NOT NULL
								)


Create Table DS.Person_Contact(
								PersonNo BigInt Foreign Key References DS.Person(PersonNo) NOT NULL
								, PersoncontactNo BigInt Identity(-100000000, 1) NOT NULL
								, ContactType Varchar(25) NOT NULL
								, ContactValue Varchar(250) NOT NULL

								)


--Person//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Policy//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




Create Table DS.Policy_Identity(
									PolicyNo BigInt NOT NULL
									, PolicyIDNo BigInt Identity(-100000000, 1) NOT NULL
									, PolicyNumber varchar(50) NOT NULL
									, PolicyEffectiveDate Date NOT NULL
									, EffectiveDate Date NOT NULL
									, EndDate Date NOT NULL
								)

Create Table DS.Policy_Location(
									PolicyIDNo BigInt Foreign Key References DS.Policy_Identity(PolicyIDNo) NOT NULL
									, PolicyLocationNo BigInt Identity(-1000000000, 1) NOT NULL
									, LocationType varchar(25) NOT NULL
									, LocationNo varchar(25) NULL
									, Address varchar(125) NULL
									, Address2 varchar(125) NULL
									, City varchar(125) NULL
									, State varchar(2) NOT NULL
									, ZIP varchar(5) NULL
									, EffectiveDate Date NOT NULL
									, EndDate Date NOT NULL
								)


--Policy//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

--Document//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Create Table DS.Document_Identity(
									DocumentNo BigInt NOT NULL
									, DocumentIDNo BigInt Identity(-100000000) NOT NULL
									, DocumentType Varchar(25) NOT NULL
									, DocumentName varchar(25) NOT NULL
									, EffectiveDate Date NOT NULL
									, EndDate Date NOT NULL
								)

Creeate Table DS.Document_File(
								DocumentNo BigInt Foreign Key References DS.Document(DocumentNo) NOT NULL
								, DocumentFileNo BigInt Identity(-100000000, 1) NOT NULL
								, DocumentFile Binary(max) NOT NULL

								)


--Document//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////