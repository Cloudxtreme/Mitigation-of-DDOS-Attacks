/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 function validate()
            {
                var username=document.forms["loginform"]["username"].value;
                var password=document.forms["loginform"]["password"].value;
               document.alert(username);
               if(username==null ||username=="" || password=="")
                    {
                        document.alert("required fields are null.complete all the fields");
                      return false;
                                          }
                                          else
                                              {
                                                  return true;
                                              }
            }

