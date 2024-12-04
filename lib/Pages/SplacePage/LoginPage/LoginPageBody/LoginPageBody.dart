
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:immam/Pages/SplacePage/LoginPage/LoginPageBody/LoginForm.dart';
import 'package:immam/Pages/SplacePage/SignUp/SignupForm.dart';
class Loginpagebody extends StatelessWidget {
  const Loginpagebody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Container(
      padding: EdgeInsets.all(20),
     // height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Obx(()=>Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          isLogin.value = true;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width/2.5,
                          child: Column(
                            children: [
                              Text("Login",
                                  style:isLogin.value
                                      ?Theme.of(context).textTheme.bodyLarge
                                      :Theme.of(context).textTheme.bodyLarge
                              ),
                              SizedBox(height: 5,),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                height: 3,
                                width:isLogin.value?100 :0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Theme.of(context).colorScheme.primary
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          isLogin.value =false;
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width/2.5,
                          child: Column(
                            children: [
                              Text("SignUp",
                                style:isLogin.value
                                    ?Theme.of(context).textTheme.bodyLarge
                                    :Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: 5,),
                              AnimatedContainer(
                                duration: Duration(microseconds: 200),
                                height: 3,
                                width:isLogin.value?0:100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Theme.of(context).colorScheme.primary
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )

                  ),
                  Obx(
                      ()=>isLogin.value?LoginForm():SignupForm(),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
