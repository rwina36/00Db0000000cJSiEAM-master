@IsTest
private class MyTestClass_Test
{
    @IsTest
    private static void testWithAssert()
    {
        Account acc = new Account();
        System.assertNotEquals(null,acc);
    }
     @IsTest
    private static void testWithoutAssert()
    {
        Account acc = new Account();
    }
    @isTest(seeAllData = true)
    private static void testWithSeeAllData(){
        Contact co = new Contact();
        
    }
}