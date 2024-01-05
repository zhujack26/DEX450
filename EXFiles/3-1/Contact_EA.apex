Contact contactToAdd = new Contact();
contactToAdd.firstName = 'June';
contactToAdd.lastName = 'Morgan';
insert contactToAdd;
System.debug('contactToAdd recordID is: ' + contactToAdd.id);

/* 
다른 언어랑 다른 점
1) insert
2) Contact만든적이 없지만 class처럼 불러서 사용 가능
*/