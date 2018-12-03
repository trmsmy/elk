select c.*,  
 '{ ' || 
' "street":"' || ca.street || '", ' ||
' "city":"' || ca.city || '", ' ||
' "state":"' || ca.state || '", ' ||
' "zip":"' || ca.zip || '" ' ||
 '}' 


address ,
ca.zip zip 


from cust c 
left outer join cust_addr ca on ca.cust_id = c.id 
