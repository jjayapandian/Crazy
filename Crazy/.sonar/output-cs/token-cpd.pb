Î
@C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\About.aspx.cs
	namespace 	
Crazy
 
{		 
public

 

partial

 
class

 
About

 
:

  
Page

! %
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ˙
IC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\About.aspx.designer.cs
	namespace

 	
Crazy


 
{ 
public 

partial 
class 
About 
{ 
} 
} Ò
QC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\AddPhoneNumber.aspx.cs
	namespace 	
Crazy
 
. 
Account 
{ 
public 

partial 
class 
AddPhoneNumber '
:( )
System* 0
.0 1
Web1 4
.4 5
UI5 7
.7 8
Page8 <
{ 
	protected 
void 
PhoneNumber_Click (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
var 
manager 
= 
Context !
.! "
GetOwinContext" 0
(0 1
)1 2
.2 3
GetUserManager3 A
<A B"
ApplicationUserManagerB X
>X Y
(Y Z
)Z [
;[ \
var 
code 
= 
manager 
. *
GenerateChangePhoneNumberToken =
(= >
User> B
.B C
IdentityC K
.K L
	GetUserIdL U
(U V
)V W
,W X
PhoneNumberY d
.d e
Texte i
)i j
;j k
if 
( 
manager 
. 

SmsService "
!=# %
null& *
)* +
{ 
var 
message 
= 
new !
IdentityMessage" 1
{ 
Destination 
=  !
PhoneNumber" -
.- .
Text. 2
,2 3
Body 
= 
$str 3
+4 5
code6 :
} 
; 
manager 
. 

SmsService "
." #
Send# '
(' (
message( /
)/ 0
;0 1
} 
Response 
. 
Redirect 
( 
$str G
+H I
HttpUtilityJ U
.U V
	UrlEncodeV _
(_ `
PhoneNumber` k
.k l
Textl p
)p q
)q r
;r s
}   	
}!! 
}"" ø
ZC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\AddPhoneNumber.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
AddPhoneNumber '
{( )
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
Literal4 ;
ErrorMessage< H
;H I
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
TextBox4 ;
PhoneNumber< G
;G H
}   
}!! ï
JC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Confirm.aspx.cs
	namespace		 	
Crazy		
 
.		 
Account		 
{

 
public 

partial 
class 
Confirm  
:! "
Page# '
{ 
	protected 
string 
StatusMessage &
{ 	
get 
; 
private 
set 
; 
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
string 
code 
= 
IdentityHelper (
.( )
GetCodeFromRequest) ;
(; <
Request< C
)C D
;D E
string 
userId 
= 
IdentityHelper *
.* + 
GetUserIdFromRequest+ ?
(? @
Request@ G
)G H
;H I
if 
( 
code 
!= 
null 
&& 
userId  &
!=' )
null* .
). /
{ 
var 
manager 
= 
Context %
.% &
GetOwinContext& 4
(4 5
)5 6
.6 7
GetUserManager7 E
<E F"
ApplicationUserManagerF \
>\ ]
(] ^
)^ _
;_ `
var 
result 
= 
manager $
.$ %
ConfirmEmail% 1
(1 2
userId2 8
,8 9
code: >
)> ?
;? @
if 
( 
result 
. 
	Succeeded $
)$ %
{ 
successPanel  
.  !
Visible! (
=) *
true+ /
;/ 0
return 
; 
} 
}   
successPanel!! 
.!! 
Visible!!  
=!!! "
false!!# (
;!!( )

errorPanel"" 
."" 
Visible"" 
=""  
true""! %
;""% &
}## 	
}$$ 
}%% ∂
SC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Confirm.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
Confirm  
{! "
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
successPanel@ L
;L M
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
	HyperLink4 =
login> C
;C D
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
PlaceHolder((4 ?

errorPanel((@ J
;((J K
}** 
}++ Â
IC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Forgot.aspx.cs
	namespace		 	
Crazy		
 
.		 
Account		 
{

 
public 

partial 
class 
ForgotPassword '
:( )
Page* .
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
	protected 
void 
Forgot 
( 
object $
sender% +
,+ ,
	EventArgs- 6
e7 8
)8 9
{ 	
if 
( 
IsValid 
) 
{ 
var 
manager 
= 
Context %
.% &
GetOwinContext& 4
(4 5
)5 6
.6 7
GetUserManager7 E
<E F"
ApplicationUserManagerF \
>\ ]
(] ^
)^ _
;_ `
ApplicationUser 
user  $
=% &
manager' .
.. /

FindByName/ 9
(9 :
Email: ?
.? @
Text@ D
)D E
;E F
if 
( 
user 
== 
null  
||! #
!$ %
manager% ,
., -
IsEmailConfirmed- =
(= >
user> B
.B C
IdC E
)E F
)F G
{ 
FailureText 
.  
Text  $
=% &
$str' \
;\ ]
ErrorMessage  
.  !
Visible! (
=) *
true+ /
;/ 0
return 
; 
} 
	loginForm## 
.## 
Visible## !
=##" #
false##$ )
;##) *
DisplayEmail$$ 
.$$ 
Visible$$ $
=$$% &
true$$' +
;$$+ ,
}%% 
}&& 	
}'' 
}(( ¬
RC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Forgot.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
ForgotPassword '
{( )
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
	loginForm@ I
;I J
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
ErrorMessage@ L
;L M
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
Literal((4 ;
FailureText((< G
;((G H
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
TextBox114 ;
Email11< A
;11A B
	protected:: 
global:: 
:::: 
System::  
.::  !
Web::! $
.::$ %
UI::% '
.::' (
WebControls::( 3
.::3 4
PlaceHolder::4 ?
DisplayEmail::@ L
;::L M
};; 
}<< ˝
JC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Lockout.aspx.cs
	namespace 	
Crazy
 
. 
Account 
{		 
public

 

partial

 
class

 
Lockout

  
:

! "
System

# )
.

) *
Web

* -
.

- .
UI

. 0
.

0 1
Page

1 5
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ™
SC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Lockout.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
Lockout  
{ 
} 
} ’#
HC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Login.aspx.cs
	namespace		 	
Crazy		
 
.		 
Account		 
{

 
public 

partial 
class 
Login 
:  
Page! %
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
RegisterHyperLink 
. 
NavigateUrl )
=* +
$str, 6
;6 7
OpenAuthLogin 
. 
	ReturnUrl #
=$ %
Request& -
.- .
QueryString. 9
[9 :
$str: E
]E F
;F G
var 
	returnUrl 
= 
HttpUtility '
.' (
	UrlEncode( 1
(1 2
Request2 9
.9 :
QueryString: E
[E F
$strF Q
]Q R
)R S
;S T
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
	returnUrl& /
)/ 0
)0 1
{ 
RegisterHyperLink !
.! "
NavigateUrl" -
+=. 0
$str1 >
+? @
	returnUrlA J
;J K
} 
} 	
	protected 
void 
LogIn 
( 
object #
sender$ *
,* +
	EventArgs, 5
e6 7
)7 8
{ 	
if 
( 
IsValid 
) 
{ 
var 
manager 
= 
Context %
.% &
GetOwinContext& 4
(4 5
)5 6
.6 7
GetUserManager7 E
<E F"
ApplicationUserManagerF \
>\ ]
(] ^
)^ _
;_ `
var   
signinManager   !
=  " #
Context  $ +
.  + ,
GetOwinContext  , :
(  : ;
)  ; <
.  < =
GetUserManager  = K
<  K L$
ApplicationSignInManager  L d
>  d e
(  e f
)  f g
;  g h
var$$ 
result$$ 
=$$ 
signinManager$$ *
.$$* +
PasswordSignIn$$+ 9
($$9 :
Email$$: ?
.$$? @
Text$$@ D
,$$D E
Password$$F N
.$$N O
Text$$O S
,$$S T

RememberMe$$U _
.$$_ `
Checked$$` g
,$$g h
shouldLockout$$i v
:$$v w
false$$x }
)$$} ~
;$$~ 
switch&& 
(&& 
result&& 
)&& 
{'' 
case(( 
SignInStatus(( %
.((% &
Success((& -
:((- .
IdentityHelper)) &
.))& '
RedirectToReturnUrl))' :
()): ;
Request)); B
.))B C
QueryString))C N
[))N O
$str))O Z
]))Z [
,))[ \
Response))] e
)))e f
;))f g
break** 
;** 
case++ 
SignInStatus++ %
.++% &
	LockedOut++& /
:++/ 0
Response,,  
.,,  !
Redirect,,! )
(,,) *
$str,,* <
),,< =
;,,= >
break-- 
;-- 
case.. 
SignInStatus.. %
...% & 
RequiresVerification..& :
:..: ;
Response//  
.//  !
Redirect//! )
(//) *
String//* 0
.//0 1
Format//1 7
(//7 8
$str//8 }
,//} ~
Request008 ?
.00? @
QueryString00@ K
[00K L
$str00L W
]00W X
,00X Y

RememberMe118 B
.11B C
Checked11C J
)11J K
,11K L
true22* .
)22. /
;22/ 0
break33 
;33 
case44 
SignInStatus44 %
.44% &
Failure44& -
:44- .
default55 
:55 
FailureText66 #
.66# $
Text66$ (
=66) *
$str66+ B
;66B C
ErrorMessage77 $
.77$ %
Visible77% ,
=77- .
true77/ 3
;773 4
break88 
;88 
}99 
}:: 
};; 	
}<< 
}== Ç
QC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Login.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
Login 
{  
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
ErrorMessage@ L
;L M
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
Literal4 ;
FailureText< G
;G H
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
TextBox((4 ;
Email((< A
;((A B
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
TextBox114 ;
Password11< D
;11D E
	protected:: 
global:: 
:::: 
System::  
.::  !
Web::! $
.::$ %
UI::% '
.::' (
WebControls::( 3
.::3 4
CheckBox::4 <

RememberMe::= G
;::G H
	protectedCC 
globalCC 
::CC 
SystemCC  
.CC  !
WebCC! $
.CC$ %
UICC% '
.CC' (
WebControlsCC( 3
.CC3 4
	HyperLinkCC4 =
RegisterHyperLinkCC> O
;CCO P
	protectedLL 
globalLL 
::LL 
CrazyLL 
.LL  
AccountLL  '
.LL' (
OpenAuthProvidersLL( 9
OpenAuthLoginLL: G
;LLG H
}MM 
}NN ˙L
IC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Manage.aspx.cs
	namespace 	
Crazy
 
. 
Account 
{ 
public 

partial 
class 
Manage 
:  !
System" (
.( )
Web) ,
., -
UI- /
./ 0
Page0 4
{ 
	protected 
string 
SuccessMessage '
{ 	
get 
; 
private 
set 
; 
} 	
private 
bool 
HasPassword  
(  !"
ApplicationUserManager! 7
manager8 ?
)? @
{ 	
return 
manager 
. 
HasPassword &
(& '
User' +
.+ ,
Identity, 4
.4 5
	GetUserId5 >
(> ?
)? @
)@ A
;A B
} 	
public 
bool 
HasPhoneNumber "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
bool 
TwoFactorEnabled $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public   
bool   &
TwoFactorBrowserRemembered   .
{  / 0
get  1 4
;  4 5
private  6 =
set  > A
;  A B
}  C D
public"" 
int"" 
LoginsCount"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
	protected$$ 
void$$ 
	Page_Load$$  
($$  !
)$$! "
{%% 	
var&& 
manager&& 
=&& 
Context&& !
.&&! "
GetOwinContext&&" 0
(&&0 1
)&&1 2
.&&2 3
GetUserManager&&3 A
<&&A B"
ApplicationUserManager&&B X
>&&X Y
(&&Y Z
)&&Z [
;&&[ \
HasPhoneNumber(( 
=(( 
String(( #
.((# $
IsNullOrEmpty(($ 1
(((1 2
manager((2 9
.((9 :
GetPhoneNumber((: H
(((H I
User((I M
.((M N
Identity((N V
.((V W
	GetUserId((W `
(((` a
)((a b
)((b c
)((c d
;((d e
TwoFactorEnabled-- 
=-- 
manager-- &
.--& '
GetTwoFactorEnabled--' :
(--: ;
User--; ?
.--? @
Identity--@ H
.--H I
	GetUserId--I R
(--R S
)--S T
)--T U
;--U V
LoginsCount// 
=// 
manager// !
.//! "
	GetLogins//" +
(//+ ,
User//, 0
.//0 1
Identity//1 9
.//9 :
	GetUserId//: C
(//C D
)//D E
)//E F
.//F G
Count//G L
;//L M
var11 !
authenticationManager11 %
=11& '
HttpContext11( 3
.113 4
Current114 ;
.11; <
GetOwinContext11< J
(11J K
)11K L
.11L M
Authentication11M [
;11[ \
if33 
(33 
!33 

IsPostBack33 
)33 
{44 
if66 
(66 
HasPassword66 
(66  
manager66  '
)66' (
)66( )
{77 
ChangePassword88 "
.88" #
Visible88# *
=88+ ,
true88- 1
;881 2
}99 
else:: 
{;; 
CreatePassword<< "
.<<" #
Visible<<# *
=<<+ ,
true<<- 1
;<<1 2
ChangePassword== "
.==" #
Visible==# *
===+ ,
false==- 2
;==2 3
}>> 
varAA 
messageAA 
=AA 
RequestAA %
.AA% &
QueryStringAA& 1
[AA1 2
$strAA2 5
]AA5 6
;AA6 7
ifBB 
(BB 
messageBB 
!=BB 
nullBB #
)BB# $
{CC 
FormEE 
.EE 
ActionEE 
=EE  !

ResolveUrlEE" ,
(EE, -
$strEE- ?
)EE? @
;EE@ A
SuccessMessageGG "
=GG# $
messageHH 
==HH  "
$strHH# 5
?HH6 7
$strHH8 Y
:II 
messageII !
==II" $
$strII% 4
?II5 6
$strII7 T
:JJ 
messageJJ !
==JJ" $
$strJJ% 9
?JJ: ;
$strJJ< V
:KK 
messageKK !
==KK" $
$strKK% <
?KK= >
$strKK? \
:LL 
messageLL !
==LL" $
$strLL% ?
?LL@ A
$strLLB \
:MM 
StringMM  
.MM  !
EmptyMM! &
;MM& '
successMessageNN "
.NN" #
VisibleNN# *
=NN+ ,
!NN- .
StringNN. 4
.NN4 5
IsNullOrEmptyNN5 B
(NNB C
SuccessMessageNNC Q
)NNQ R
;NNR S
}OO 
}PP 
}QQ 	
privateTT 
voidTT 
	AddErrorsTT 
(TT 
IdentityResultTT -
resultTT. 4
)TT4 5
{UU 	
foreachVV 
(VV 
varVV 
errorVV 
inVV !
resultVV" (
.VV( )
ErrorsVV) /
)VV/ 0
{WW 

ModelStateXX 
.XX 
AddModelErrorXX (
(XX( )
$strXX) +
,XX+ ,
errorXX- 2
)XX2 3
;XX3 4
}YY 
}ZZ 	
	protected]] 
void]] 
RemovePhone_Click]] (
(]]( )
object]]) /
sender]]0 6
,]]6 7
	EventArgs]]8 A
e]]B C
)]]C D
{^^ 	
var__ 
manager__ 
=__ 
Context__ !
.__! "
GetOwinContext__" 0
(__0 1
)__1 2
.__2 3
GetUserManager__3 A
<__A B"
ApplicationUserManager__B X
>__X Y
(__Y Z
)__Z [
;__[ \
var`` 
signInManager`` 
=`` 
Context``  '
.``' (
GetOwinContext``( 6
(``6 7
)``7 8
.``8 9
Get``9 <
<``< =$
ApplicationSignInManager``= U
>``U V
(``V W
)``W X
;``X Y
varaa 
resultaa 
=aa 
manageraa  
.aa  !
SetPhoneNumberaa! /
(aa/ 0
Useraa0 4
.aa4 5
Identityaa5 =
.aa= >
	GetUserIdaa> G
(aaG H
)aaH I
,aaI J
nullaaK O
)aaO P
;aaP Q
ifbb 
(bb 
!bb 
resultbb 
.bb 
	Succeededbb !
)bb! "
{cc 
returndd 
;dd 
}ee 
varff 
userff 
=ff 
managerff 
.ff 
FindByIdff '
(ff' (
Userff( ,
.ff, -
Identityff- 5
.ff5 6
	GetUserIdff6 ?
(ff? @
)ff@ A
)ffA B
;ffB C
ifgg 
(gg 
usergg 
!=gg 
nullgg 
)gg 
{hh 
signInManagerii 
.ii 
SignInii $
(ii$ %
userii% )
,ii) *
isPersistentii+ 7
:ii7 8
falseii9 >
,ii> ?
rememberBrowserii@ O
:iiO P
falseiiQ V
)iiV W
;iiW X
Responsejj 
.jj 
Redirectjj !
(jj! "
$strjj" N
)jjN O
;jjO P
}kk 
}ll 	
	protectedoo 
voidoo "
TwoFactorDisable_Clickoo -
(oo- .
objectoo. 4
senderoo5 ;
,oo; <
	EventArgsoo= F
eooG H
)ooH I
{pp 	
varqq 
managerqq 
=qq 
Contextqq !
.qq! "
GetOwinContextqq" 0
(qq0 1
)qq1 2
.qq2 3
GetUserManagerqq3 A
<qqA B"
ApplicationUserManagerqqB X
>qqX Y
(qqY Z
)qqZ [
;qq[ \
managerrr 
.rr 
SetTwoFactorEnabledrr '
(rr' (
Userrr( ,
.rr, -
Identityrr- 5
.rr5 6
	GetUserIdrr6 ?
(rr? @
)rr@ A
,rrA B
falserrC H
)rrH I
;rrI J
Responsett 
.tt 
Redirecttt 
(tt 
$strtt /
)tt/ 0
;tt0 1
}uu 	
	protectedxx 
voidxx !
TwoFactorEnable_Clickxx ,
(xx, -
objectxx- 3
senderxx4 :
,xx: ;
	EventArgsxx< E
exxF G
)xxG H
{yy 	
varzz 
managerzz 
=zz 
Contextzz !
.zz! "
GetOwinContextzz" 0
(zz0 1
)zz1 2
.zz2 3
GetUserManagerzz3 A
<zzA B"
ApplicationUserManagerzzB X
>zzX Y
(zzY Z
)zzZ [
;zz[ \
manager{{ 
.{{ 
SetTwoFactorEnabled{{ '
({{' (
User{{( ,
.{{, -
Identity{{- 5
.{{5 6
	GetUserId{{6 ?
({{? @
){{@ A
,{{A B
true{{C G
){{G H
;{{H I
Response}} 
.}} 
Redirect}} 
(}} 
$str}} /
)}}/ 0
;}}0 1
}~~ 	
} 
}ÄÄ ¡

RC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Manage.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
Manage 
{  !
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
successMessage@ N
;N O
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
	HyperLink4 =
ChangePassword> L
;L M
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
	HyperLink((4 =
CreatePassword((> L
;((L M
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
Label114 9
PhoneNumber11: E
;11E F
}22 
}33 Ó-
OC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ManageLogins.aspx.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
ManageLogins %
:& '
System( .
.. /
Web/ 2
.2 3
UI3 5
.5 6
Page6 :
{ 
	protected 
string 
SuccessMessage '
{ 	
get 
; 
private 
set 
; 
} 	
	protected 
bool #
CanRemoveExternalLogins .
{ 	
get 
; 
private 
set 
; 
} 	
private 
bool 
HasPassword  
(  !"
ApplicationUserManager! 7
manager8 ?
)? @
{ 	
return 
manager 
. 
HasPassword &
(& '
User' +
.+ ,
Identity, 4
.4 5
	GetUserId5 >
(> ?
)? @
)@ A
;A B
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var   
manager   
=   
Context   !
.  ! "
GetOwinContext  " 0
(  0 1
)  1 2
.  2 3
GetUserManager  3 A
<  A B"
ApplicationUserManager  B X
>  X Y
(  Y Z
)  Z [
;  [ \#
CanRemoveExternalLogins!! #
=!!$ %
manager!!& -
.!!- .
	GetLogins!!. 7
(!!7 8
User!!8 <
.!!< =
Identity!!= E
.!!E F
	GetUserId!!F O
(!!O P
)!!P Q
)!!Q R
.!!R S
Count!!S X
(!!X Y
)!!Y Z
>!![ \
$num!!] ^
;!!^ _
SuccessMessage## 
=## 
String## #
.### $
Empty##$ )
;##) *
successMessage$$ 
.$$ 
Visible$$ "
=$$# $
!$$% &
String$$& ,
.$$, -
IsNullOrEmpty$$- :
($$: ;
SuccessMessage$$; I
)$$I J
;$$J K
}%% 	
public'' 
IEnumerable'' 
<'' 
UserLoginInfo'' (
>''( )
	GetLogins''* 3
(''3 4
)''4 5
{(( 	
var)) 
manager)) 
=)) 
Context)) !
.))! "
GetOwinContext))" 0
())0 1
)))1 2
.))2 3
GetUserManager))3 A
<))A B"
ApplicationUserManager))B X
>))X Y
())Y Z
)))Z [
;))[ \
var** 
accounts** 
=** 
manager** "
.**" #
	GetLogins**# ,
(**, -
User**- 1
.**1 2
Identity**2 :
.**: ;
	GetUserId**; D
(**D E
)**E F
)**F G
;**G H#
CanRemoveExternalLogins++ #
=++$ %
accounts++& .
.++. /
Count++/ 4
(++4 5
)++5 6
>++7 8
$num++9 :
||++; =
HasPassword++> I
(++I J
manager++J Q
)++Q R
;++R S
return,, 
accounts,, 
;,, 
}-- 	
public// 
void// 
RemoveLogin// 
(//  
string//  &
loginProvider//' 4
,//4 5
string//6 <
providerKey//= H
)//H I
{00 	
var11 
manager11 
=11 
Context11 !
.11! "
GetOwinContext11" 0
(110 1
)111 2
.112 3
GetUserManager113 A
<11A B"
ApplicationUserManager11B X
>11X Y
(11Y Z
)11Z [
;11[ \
var22 
signInManager22 
=22 
Context22  '
.22' (
GetOwinContext22( 6
(226 7
)227 8
.228 9
Get229 <
<22< =$
ApplicationSignInManager22= U
>22U V
(22V W
)22W X
;22X Y
var33 
result33 
=33 
manager33  
.33  !
RemoveLogin33! ,
(33, -
User33- 1
.331 2
Identity332 :
.33: ;
	GetUserId33; D
(33D E
)33E F
,33F G
new33H K
UserLoginInfo33L Y
(33Y Z
loginProvider33Z g
,33g h
providerKey33i t
)33t u
)33u v
;33v w
string44 
msg44 
=44 
String44 
.44  
Empty44  %
;44% &
if55 
(55 
result55 
.55 
	Succeeded55  
)55  !
{66 
var77 
user77 
=77 
manager77 "
.77" #
FindById77# +
(77+ ,
User77, 0
.770 1
Identity771 9
.779 :
	GetUserId77: C
(77C D
)77D E
)77E F
;77F G
signInManager88 
.88 
SignIn88 $
(88$ %
user88% )
,88) *
isPersistent88+ 7
:887 8
false889 >
,88> ?
rememberBrowser88@ O
:88O P
false88Q V
)88V W
;88W X
msg99 
=99 
$str99 -
;99- .
}:: 
Response;; 
.;; 
Redirect;; 
(;; 
$str;; 6
+;;7 8
msg;;9 <
);;< =
;;;= >
}<< 	
}== 
}>> ø
XC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ManageLogins.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
ManageLogins %
{& '
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
successMessage@ N
;N O
} 
} ˛5
QC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ManagePassword.aspx.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
ManagePassword '
:( )
System* 0
.0 1
Web1 4
.4 5
UI5 7
.7 8
Page8 <
{ 
	protected 
string 
SuccessMessage '
{ 	
get 
; 
private 
set 
; 
} 	
private 
bool 
HasPassword  
(  !"
ApplicationUserManager! 7
manager8 ?
)? @
{ 	
return 
manager 
. 
HasPassword &
(& '
User' +
.+ ,
Identity, 4
.4 5
	GetUserId5 >
(> ?
)? @
)@ A
;A B
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
manager 
= 
Context !
.! "
GetOwinContext" 0
(0 1
)1 2
.2 3
GetUserManager3 A
<A B"
ApplicationUserManagerB X
>X Y
(Y Z
)Z [
;[ \
if 
( 
! 

IsPostBack 
) 
{ 
if   
(   
HasPassword   
(    
manager    '
)  ' (
)  ( )
{!!  
changePasswordHolder"" (
.""( )
Visible"") 0
=""1 2
true""3 7
;""7 8
}## 
else$$ 
{%% 
setPassword&& 
.&&  
Visible&&  '
=&&( )
true&&* .
;&&. / 
changePasswordHolder'' (
.''( )
Visible'') 0
=''1 2
false''3 8
;''8 9
}(( 
var++ 
message++ 
=++ 
Request++ %
.++% &
QueryString++& 1
[++1 2
$str++2 5
]++5 6
;++6 7
if,, 
(,, 
message,, 
!=,, 
null,, #
),,# $
{-- 
Form// 
.// 
Action// 
=//  !

ResolveUrl//" ,
(//, -
$str//- ?
)//? @
;//@ A
}00 
}11 
}22 	
	protected44 
void44  
ChangePassword_Click44 +
(44+ ,
object44, 2
sender443 9
,449 :
	EventArgs44; D
e44E F
)44F G
{55 	
if66 
(66 
IsValid66 
)66 
{77 
var88 
manager88 
=88 
Context88 %
.88% &
GetOwinContext88& 4
(884 5
)885 6
.886 7
GetUserManager887 E
<88E F"
ApplicationUserManager88F \
>88\ ]
(88] ^
)88^ _
;88_ `
var99 
signInManager99 !
=99" #
Context99$ +
.99+ ,
GetOwinContext99, :
(99: ;
)99; <
.99< =
Get99= @
<99@ A$
ApplicationSignInManager99A Y
>99Y Z
(99Z [
)99[ \
;99\ ]
IdentityResult:: 
result:: %
=::& '
manager::( /
.::/ 0
ChangePassword::0 >
(::> ?
User::? C
.::C D
Identity::D L
.::L M
	GetUserId::M V
(::V W
)::W X
,::X Y
CurrentPassword::Z i
.::i j
Text::j n
,::n o
NewPassword::p {
.::{ |
Text	::| Ä
)
::Ä Å
;
::Å Ç
if;; 
(;; 
result;; 
.;; 
	Succeeded;; $
);;$ %
{<< 
var== 
user== 
=== 
manager== &
.==& '
FindById==' /
(==/ 0
User==0 4
.==4 5
Identity==5 =
.=== >
	GetUserId==> G
(==G H
)==H I
)==I J
;==J K
signInManager>> !
.>>! "
SignIn>>" (
(>>( )
user>>* .
,>>. /
isPersistent>>0 <
:>>< =
false>>> C
,>>C D
rememberBrowser>>E T
:>>T U
false>>V [
)>>[ \
;>>\ ]
Response?? 
.?? 
Redirect?? %
(??% &
$str??& K
)??K L
;??L M
}@@ 
elseAA 
{BB 
	AddErrorsCC 
(CC 
resultCC $
)CC$ %
;CC% &
}DD 
}EE 
}FF 	
	protectedHH 
voidHH 
SetPassword_ClickHH (
(HH( )
objectHH) /
senderHH0 6
,HH6 7
	EventArgsHH8 A
eHHB C
)HHC D
{II 	
ifJJ 
(JJ 
IsValidJJ 
)JJ 
{KK 
varMM 
managerMM 
=MM 
ContextMM %
.MM% &
GetOwinContextMM& 4
(MM4 5
)MM5 6
.MM6 7
GetUserManagerMM7 E
<MME F"
ApplicationUserManagerMMF \
>MM\ ]
(MM] ^
)MM^ _
;MM_ `
IdentityResultNN 
resultNN %
=NN& '
managerNN( /
.NN/ 0
AddPasswordNN0 ;
(NN; <
UserNN< @
.NN@ A
IdentityNNA I
.NNI J
	GetUserIdNNJ S
(NNS T
)NNT U
,NNU V
passwordNNW _
.NN_ `
TextNN` d
)NNd e
;NNe f
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO $
)OO$ %
{PP 
ResponseQQ 
.QQ 
RedirectQQ %
(QQ% &
$strQQ& H
)QQH I
;QQI J
}RR 
elseSS 
{TT 
	AddErrorsUU 
(UU 
resultUU $
)UU$ %
;UU% &
}VV 
}WW 
}XX 	
privateZZ 
voidZZ 
	AddErrorsZZ 
(ZZ 
IdentityResultZZ -
resultZZ. 4
)ZZ4 5
{[[ 	
foreach\\ 
(\\ 
var\\ 
error\\ 
in\\ !
result\\" (
.\\( )
Errors\\) /
)\\/ 0
{]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
$str^^) +
,^^+ ,
error^^- 2
)^^2 3
;^^3 4
}__ 
}`` 	
}aa 
}bb ˇ
ZC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ManagePassword.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
ManagePassword '
{( )
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
setPassword@ K
;K L
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
TextBox4 ;
password< D
;D E
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
TextBox((4 ;
confirmPassword((< K
;((K L
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
PlaceHolder114 ? 
changePasswordHolder11@ T
;11T U
	protected:: 
global:: 
:::: 
System::  
.::  !
Web::! $
.::$ %
UI::% '
.::' (
WebControls::( 3
.::3 4
Label::4 9 
CurrentPasswordLabel::: N
;::N O
	protectedCC 
globalCC 
::CC 
SystemCC  
.CC  !
WebCC! $
.CC$ %
UICC% '
.CC' (
WebControlsCC( 3
.CC3 4
TextBoxCC4 ;
CurrentPasswordCC< K
;CCK L
	protectedLL 
globalLL 
::LL 
SystemLL  
.LL  !
WebLL! $
.LL$ %
UILL% '
.LL' (
WebControlsLL( 3
.LL3 4
LabelLL4 9
NewPasswordLabelLL: J
;LLJ K
	protectedUU 
globalUU 
::UU 
SystemUU  
.UU  !
WebUU! $
.UU$ %
UIUU% '
.UU' (
WebControlsUU( 3
.UU3 4
TextBoxUU4 ;
NewPasswordUU< G
;UUG H
	protected^^ 
global^^ 
::^^ 
System^^  
.^^  !
Web^^! $
.^^$ %
UI^^% '
.^^' (
WebControls^^( 3
.^^3 4
Label^^4 9#
ConfirmNewPasswordLabel^^: Q
;^^Q R
	protectedgg 
globalgg 
::gg 
Systemgg  
.gg  !
Webgg! $
.gg$ %
UIgg% '
.gg' (
WebControlsgg( 3
.gg3 4
TextBoxgg4 ;
ConfirmNewPasswordgg< N
;ggN O
}hh 
}ii Œ
TC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\OpenAuthProviders.ascx.cs
	namespace		 	
Crazy		
 
.		 
Account		 
{

 
public 

partial 
class 
OpenAuthProviders *
:+ ,
System- 3
.3 4
Web4 7
.7 8
UI8 :
.: ;
UserControl; F
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
if 
( 

IsPostBack 
) 
{ 
var 
provider 
= 
Request &
.& '
Form' +
[+ ,
$str, 6
]6 7
;7 8
if 
( 
provider 
== 
null  $
)$ %
{ 
return 
; 
} 
string 
redirectUrl "
=# $

ResolveUrl% /
(/ 0
String0 6
.6 7
Format7 =
(= >
CultureInfo> I
.I J
InvariantCultureJ Z
,Z [
$str	\ ì
,
ì î
IdentityHelper
ï £
.
£ §
ProviderNameKey
§ ≥
,
≥ ¥
provider
µ Ω
,
Ω æ
	ReturnUrl
ø »
)
» …
)
…  
;
  À
var 

properties 
=  
new! $$
AuthenticationProperties% =
(= >
)> ?
{@ A
RedirectUriB M
=N O
redirectUrlP [
}\ ]
;] ^
if 
( 
Context 
. 
User  
.  !
Identity! )
.) *
IsAuthenticated* 9
)9 :
{ 

properties 
. 

Dictionary )
[) *
IdentityHelper* 8
.8 9
XsrfKey9 @
]@ A
=B C
ContextD K
.K L
UserL P
.P Q
IdentityQ Y
.Y Z
	GetUserIdZ c
(c d
)d e
;e f
} 
Context 
. 
GetOwinContext &
(& '
)' (
.( )
Authentication) 7
.7 8
	Challenge8 A
(A B

propertiesB L
,L M
providerN V
)V W
;W X
Response 
. 

StatusCode #
=$ %
$num& )
;) *
Response   
.   
End   
(   
)   
;   
}!! 
}"" 	
public$$ 
string$$ 
	ReturnUrl$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 
IEnumerable&& 
<&& 
string&& !
>&&! "
GetProviderNames&&# 3
(&&3 4
)&&4 5
{'' 	
return(( 
Context(( 
.(( 
GetOwinContext(( )
((() *
)((* +
.((+ ,
Authentication((, :
.((: ;*
GetExternalAuthenticationTypes((; Y
(((Y Z
)((Z [
.(([ \
Select((\ b
(((b c
t((c d
=>((e g
t((h i
.((i j
AuthenticationType((j |
)((| }
;((} ~
})) 	
}** 
}++ «
]C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\OpenAuthProviders.ascx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
OpenAuthProviders *
{+ ,
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
ListView4 <
providerDetails= L
;L M
} 
} ê
KC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Register.aspx.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
Register !
:" #
Page$ (
{ 
	protected 
void 
CreateUser_Click '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
var 
manager 
= 
Context !
.! "
GetOwinContext" 0
(0 1
)1 2
.2 3
GetUserManager3 A
<A B"
ApplicationUserManagerB X
>X Y
(Y Z
)Z [
;[ \
var 
signInManager 
= 
Context  '
.' (
GetOwinContext( 6
(6 7
)7 8
.8 9
Get9 <
<< =$
ApplicationSignInManager= U
>U V
(V W
)W X
;X Y
var 
user 
= 
new 
ApplicationUser *
(* +
)+ ,
{- .
UserName/ 7
=8 9
Email: ?
.? @
Text@ D
,D E
EmailF K
=L M
EmailN S
.S T
TextT X
}Y Z
;Z [
IdentityResult 
result !
=" #
manager$ +
.+ ,
Create, 2
(2 3
user3 7
,7 8
Password9 A
.A B
TextB F
)F G
;G H
if 
( 
result 
. 
	Succeeded  
)  !
{ 
signInManager 
. 
SignIn $
($ %
user& *
,* +
isPersistent, 8
:8 9
false: ?
,? @
rememberBrowserA P
:P Q
falseR W
)W X
;X Y
IdentityHelper 
. 
RedirectToReturnUrl 2
(2 3
Request3 :
.: ;
QueryString; F
[F G
$strG R
]R S
,S T
ResponseU ]
)] ^
;^ _
} 
else 
{ 
ErrorMessage   
.   
Text   !
=  " #
result  $ *
.  * +
Errors  + 1
.  1 2
FirstOrDefault  2 @
(  @ A
)  A B
;  B C
}!! 
}"" 	
}## 
}$$ ≤

TC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\Register.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
Register !
{" #
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
Literal4 ;
ErrorMessage< H
;H I
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
TextBox4 ;
Email< A
;A B
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
TextBox((4 ;
Password((< D
;((D E
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
TextBox114 ;
ConfirmPassword11< K
;11K L
}22 
}33 ¢T
XC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\RegisterExternalLogin.aspx.cs
	namespace		 	
Crazy		
 
.		 
Account		 
{

 
public 

partial 
class !
RegisterExternalLogin .
:/ 0
System1 7
.7 8
Web8 ;
.; <
UI< >
.> ?
Page? C
{ 
	protected 
string 
ProviderName %
{ 	
get 
{ 
return 
( 
string  
)  !
	ViewState! *
[* +
$str+ 9
]9 :
??; =
String> D
.D E
EmptyE J
;J K
}L M
private 
set 
{ 
	ViewState #
[# $
$str$ 2
]2 3
=4 5
value6 ;
;; <
}= >
} 	
	protected 
string 
ProviderAccountKey +
{ 	
get 
{ 
return 
( 
string  
)  !
	ViewState! *
[* +
$str+ ?
]? @
??A C
StringD J
.J K
EmptyK P
;P Q
}R S
private 
set 
{ 
	ViewState #
[# $
$str$ 8
]8 9
=: ;
value< A
;A B
}C D
} 	
private 
void 
RedirectOnFail #
(# $
)$ %
{ 	
Response 
. 
Redirect 
( 
( 
User #
.# $
Identity$ ,
., -
IsAuthenticated- <
)< =
?> ?
$str@ R
:S T
$strU f
)f g
;g h
} 	
	protected 
void 
	Page_Load  
(  !
)! "
{ 	
ProviderName!! 
=!! 
IdentityHelper!! )
.!!) *&
GetProviderNameFromRequest!!* D
(!!D E
Request!!E L
)!!L M
;!!M N
if"" 
("" 
String"" 
."" 
IsNullOrEmpty"" $
(""$ %
ProviderName""% 1
)""1 2
)""2 3
{## 
RedirectOnFail$$ 
($$ 
)$$  
;$$  !
return%% 
;%% 
}&& 
if'' 
('' 
!'' 

IsPostBack'' 
)'' 
{(( 
var)) 
manager)) 
=)) 
Context)) %
.))% &
GetOwinContext))& 4
())4 5
)))5 6
.))6 7
GetUserManager))7 E
<))E F"
ApplicationUserManager))F \
>))\ ]
())] ^
)))^ _
;))_ `
var** 
signInManager** !
=**" #
Context**$ +
.**+ ,
GetOwinContext**, :
(**: ;
)**; <
.**< =
Get**= @
<**@ A$
ApplicationSignInManager**A Y
>**Y Z
(**Z [
)**[ \
;**\ ]
var++ 
	loginInfo++ 
=++ 
Context++  '
.++' (
GetOwinContext++( 6
(++6 7
)++7 8
.++8 9
Authentication++9 G
.++G H 
GetExternalLoginInfo++H \
(++\ ]
)++] ^
;++^ _
if,, 
(,, 
	loginInfo,, 
==,,  
null,,! %
),,% &
{-- 
RedirectOnFail.. "
(.." #
)..# $
;..$ %
return// 
;// 
}00 
var11 
user11 
=11 
manager11 "
.11" #
Find11# '
(11' (
	loginInfo11( 1
.111 2
Login112 7
)117 8
;118 9
if22 
(22 
user22 
!=22 
null22  
)22  !
{33 
signInManager44 !
.44! "
SignIn44" (
(44( )
user44) -
,44- .
isPersistent44/ ;
:44; <
false44= B
,44B C
rememberBrowser44D S
:44S T
false44U Z
)44Z [
;44[ \
IdentityHelper55 "
.55" #
RedirectToReturnUrl55# 6
(556 7
Request557 >
.55> ?
QueryString55? J
[55J K
$str55K V
]55V W
,55W X
Response55Y a
)55a b
;55b c
}66 
else77 
if77 
(77 
User77 
.77 
Identity77 &
.77& '
IsAuthenticated77' 6
)776 7
{88 
var:: 
verifiedloginInfo:: )
=::* +
Context::, 3
.::3 4
GetOwinContext::4 B
(::B C
)::C D
.::D E
Authentication::E S
.::S T 
GetExternalLoginInfo::T h
(::h i
IdentityHelper::i w
.::w x
XsrfKey::x 
,	:: Ä
User
::Å Ö
.
::Ö Ü
Identity
::Ü é
.
::é è
	GetUserId
::è ò
(
::ò ô
)
::ô ö
)
::ö õ
;
::õ ú
if;; 
(;; 
verifiedloginInfo;; )
==;;* ,
null;;- 1
);;1 2
{<< 
RedirectOnFail== &
(==& '
)==' (
;==( )
return>> 
;>> 
}?? 
varAA 
resultAA 
=AA  
managerAA! (
.AA( )
AddLoginAA) 1
(AA1 2
UserAA2 6
.AA6 7
IdentityAA7 ?
.AA? @
	GetUserIdAA@ I
(AAI J
)AAJ K
,AAK L
verifiedloginInfoAAM ^
.AA^ _
LoginAA_ d
)AAd e
;AAe f
ifBB 
(BB 
resultBB 
.BB 
	SucceededBB (
)BB( )
{CC 
IdentityHelperDD &
.DD& '
RedirectToReturnUrlDD' :
(DD: ;
RequestDD; B
.DDB C
QueryStringDDC N
[DDN O
$strDDO Z
]DDZ [
,DD[ \
ResponseDD] e
)DDe f
;DDf g
}EE 
elseFF 
{GG 
	AddErrorsHH !
(HH! "
resultHH" (
)HH( )
;HH) *
returnII 
;II 
}JJ 
}KK 
elseLL 
{MM 
emailNN 
.NN 
TextNN 
=NN  
	loginInfoNN! *
.NN* +
EmailNN+ 0
;NN0 1
}OO 
}PP 
}QQ 	
	protectedSS 
voidSS 
LogIn_ClickSS "
(SS" #
objectSS# )
senderSS* 0
,SS0 1
	EventArgsSS2 ;
eSS< =
)SS= >
{TT 	
CreateAndLoginUserUU 
(UU 
)UU  
;UU  !
}VV 	
privateXX 
voidXX 
CreateAndLoginUserXX '
(XX' (
)XX( )
{YY 	
ifZZ 
(ZZ 
!ZZ 
IsValidZZ 
)ZZ 
{[[ 
return\\ 
;\\ 
}]] 
var^^ 
manager^^ 
=^^ 
Context^^ !
.^^! "
GetOwinContext^^" 0
(^^0 1
)^^1 2
.^^2 3
GetUserManager^^3 A
<^^A B"
ApplicationUserManager^^B X
>^^X Y
(^^Y Z
)^^Z [
;^^[ \
var__ 
signInManager__ 
=__ 
Context__  '
.__' (
GetOwinContext__( 6
(__6 7
)__7 8
.__8 9
GetUserManager__9 G
<__G H$
ApplicationSignInManager__H `
>__` a
(__a b
)__b c
;__c d
var`` 
user`` 
=`` 
new`` 
ApplicationUser`` *
(``* +
)``+ ,
{``- .
UserName``/ 7
=``8 9
email``: ?
.``? @
Text``@ D
,``D E
Email``F K
=``L M
email``N S
.``S T
Text``T X
}``Y Z
;``Z [
IdentityResultaa 
resultaa !
=aa" #
manageraa$ +
.aa+ ,
Createaa, 2
(aa2 3
useraa3 7
)aa7 8
;aa8 9
ifbb 
(bb 
resultbb 
.bb 
	Succeededbb  
)bb  !
{cc 
vardd 
	loginInfodd 
=dd 
Contextdd  '
.dd' (
GetOwinContextdd( 6
(dd6 7
)dd7 8
.dd8 9
Authenticationdd9 G
.ddG H 
GetExternalLoginInfoddH \
(dd\ ]
)dd] ^
;dd^ _
ifee 
(ee 
	loginInfoee 
==ee  
nullee! %
)ee% &
{ff 
RedirectOnFailgg "
(gg" #
)gg# $
;gg$ %
returnhh 
;hh 
}ii 
resultjj 
=jj 
managerjj  
.jj  !
AddLoginjj! )
(jj) *
userjj* .
.jj. /
Idjj/ 1
,jj1 2
	loginInfojj3 <
.jj< =
Loginjj= B
)jjB C
;jjC D
ifkk 
(kk 
resultkk 
.kk 
	Succeededkk $
)kk$ %
{ll 
signInManagermm !
.mm! "
SignInmm" (
(mm( )
usermm) -
,mm- .
isPersistentmm/ ;
:mm; <
falsemm= B
,mmB C
rememberBrowsermmD S
:mmS T
falsemmU Z
)mmZ [
;mm[ \
IdentityHelperss "
.ss" #
RedirectToReturnUrlss# 6
(ss6 7
Requestss7 >
.ss> ?
QueryStringss? J
[ssJ K
$strssK V
]ssV W
,ssW X
ResponsessY a
)ssa b
;ssb c
returntt 
;tt 
}uu 
}vv 
	AddErrorsww 
(ww 
resultww 
)ww 
;ww 
}xx 	
privatezz 
voidzz 
	AddErrorszz 
(zz 
IdentityResultzz -
resultzz. 4
)zz4 5
{{{ 	
foreach|| 
(|| 
var|| 
error|| 
in|| !
result||" (
.||( )
Errors||) /
)||/ 0
{}} 

ModelState~~ 
.~~ 
AddModelError~~ (
(~~( )
$str~~) +
,~~+ ,
error~~- 2
)~~2 3
;~~3 4
} 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ƒ
aC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\RegisterExternalLogin.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class !
RegisterExternalLogin .
{/ 0
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
TextBox4 ;
email< A
;A B
} 
} 
PC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ResetPassword.aspx.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
ResetPassword &
:' (
Page) -
{ 
	protected 
string 
StatusMessage &
{ 	
get 
; 
private 
set 
; 
} 	
	protected 
void 
Reset_Click "
(" #
object# )
sender* 0
,0 1
	EventArgs2 ;
e< =
)= >
{ 	
string 
code 
= 
IdentityHelper (
.( )
GetCodeFromRequest) ;
(; <
Request< C
)C D
;D E
if 
( 
code 
!= 
null 
) 
{ 
var 
manager 
= 
Context %
.% &
GetOwinContext& 4
(4 5
)5 6
.6 7
GetUserManager7 E
<E F"
ApplicationUserManagerF \
>\ ]
(] ^
)^ _
;_ `
var 
user 
= 
manager "
." #

FindByName# -
(- .
Email. 3
.3 4
Text4 8
)8 9
;9 :
if 
( 
user 
== 
null  
)  !
{ 
ErrorMessage  
.  !
Text! %
=& '
$str( 7
;7 8
return 
; 
}   
var!! 
result!! 
=!! 
manager!! $
.!!$ %
ResetPassword!!% 2
(!!2 3
user!!3 7
.!!7 8
Id!!8 :
,!!: ;
code!!< @
,!!@ A
Password!!B J
.!!J K
Text!!K O
)!!O P
;!!P Q
if"" 
("" 
result"" 
."" 
	Succeeded"" $
)""$ %
{## 
Response$$ 
.$$ 
Redirect$$ %
($$% &
$str$$& K
)$$K L
;$$L M
return%% 
;%% 
}&& 
ErrorMessage'' 
.'' 
Text'' !
=''" #
result''$ *
.''* +
Errors''+ 1
.''1 2
FirstOrDefault''2 @
(''@ A
)''A B
;''B C
return(( 
;(( 
})) 
ErrorMessage++ 
.++ 
Text++ 
=++ 
$str++  7
;++7 8
},, 	
}-- 
}.. º

YC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ResetPassword.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
ResetPassword &
{' (
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
Literal4 ;
ErrorMessage< H
;H I
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
TextBox4 ;
Email< A
;A B
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
TextBox((4 ;
Password((< D
;((D E
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
TextBox114 ;
ConfirmPassword11< K
;11K L
}22 
}33 Ê
\C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ResetPasswordConfirmation.aspx.cs
	namespace 	
Crazy
 
. 
Account 
{ 
public 

partial 
class %
ResetPasswordConfirmation 2
:3 4
Page5 9
{ 
} 
} Œ
eC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\ResetPasswordConfirmation.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class %
ResetPasswordConfirmation 2
{3 4
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
	HyperLink4 =
login> C
;C D
} 
} ë5
`C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\TwoFactorAuthenticationSignIn.aspx.cs
	namespace 	
Crazy
 
. 
Account 
{ 
public 

partial 
class )
TwoFactorAuthenticationSignIn 6
:7 8
System9 ?
.? @
Web@ C
.C D
UID F
.F G
PageG K
{ 
private $
ApplicationSignInManager (
signinManager) 6
;6 7
private "
ApplicationUserManager &
manager' .
;. /
public )
TwoFactorAuthenticationSignIn ,
(, -
)- .
{ 	
manager 
= 
Context 
. 
GetOwinContext ,
(, -
)- .
.. /
GetUserManager/ =
<= >"
ApplicationUserManager> T
>T U
(U V
)V W
;W X
signinManager 
= 
Context #
.# $
GetOwinContext$ 2
(2 3
)3 4
.4 5
GetUserManager5 C
<C D$
ApplicationSignInManagerD \
>\ ]
(] ^
)^ _
;_ `
} 	
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
userId 
= 
signinManager &
.& '
GetVerifiedUserId' 8
<8 9
ApplicationUser9 H
,H I
stringJ P
>P Q
(Q R
)R S
;S T
if 
( 
userId 
== 
null 
) 
{ 
Response 
. 
Redirect !
(! "
$str" 2
,2 3
true4 8
)8 9
;9 :
} 
var   
userFactors   
=   
manager   %
.  % &&
GetValidTwoFactorProviders  & @
(  @ A
userId  A G
)  G H
;  H I
	Providers!! 
.!! 

DataSource!!  
=!!! "
userFactors!!# .
.!!. /
Select!!/ 5
(!!5 6
x!!6 7
=>!!8 :
x!!; <
)!!< =
.!!= >
ToList!!> D
(!!D E
)!!E F
;!!F G
	Providers"" 
."" 
DataBind"" 
("" 
)""  
;""  !
}## 	
	protected%% 
void%% 
CodeSubmit_Click%% '
(%%' (
object%%( .
sender%%/ 5
,%%5 6
	EventArgs%%7 @
e%%A B
)%%B C
{&& 	
bool'' 

rememberMe'' 
='' 
false'' #
;''# $
bool(( 
.(( 
TryParse(( 
((( 
Request(( !
.((! "
QueryString((" -
[((- .
$str((. :
]((: ;
,((; <
out((= @

rememberMe((A K
)((K L
;((L M
var** 
result** 
=** 
signinManager** &
.**& '
TwoFactorSignIn**' 6
<**6 7
ApplicationUser**7 F
,**F G
string**H N
>**N O
(**O P
SelectedProvider**P `
.**` a
Value**a f
,**f g
Code**h l
.**l m
Text**m q
,**q r
isPersistent**s 
:	** Ä

rememberMe
**Å ã
,
**ã å
rememberBrowser
**ç ú
:
**ú ù
RememberBrowser
**û ≠
.
**≠ Æ
Checked
**Æ µ
)
**µ ∂
;
**∂ ∑
switch++ 
(++ 
result++ 
)++ 
{,, 
case-- 
SignInStatus-- !
.--! "
Success--" )
:--) *
IdentityHelper.. "
..." #
RedirectToReturnUrl..# 6
(..6 7
Request..7 >
...> ?
QueryString..? J
[..J K
$str..K V
]..V W
,..W X
Response..Y a
)..a b
;..b c
break// 
;// 
case00 
SignInStatus00 !
.00! "
	LockedOut00" +
:00+ ,
Response11 
.11 
Redirect11 %
(11% &
$str11& 8
)118 9
;119 :
break22 
;22 
case33 
SignInStatus33 !
.33! "
Failure33" )
:33) *
default44 
:44 
FailureText55 
.55  
Text55  $
=55% &
$str55' 5
;555 6
ErrorMessage66  
.66  !
Visible66! (
=66) *
true66+ /
;66/ 0
break77 
;77 
}88 
}99 	
	protected;; 
void;;  
ProviderSubmit_Click;; +
(;;+ ,
object;;, 2
sender;;3 9
,;;9 :
	EventArgs;;; D
e;;E F
);;F G
{<< 	
if== 
(== 
!== 
signinManager== 
.== 
SendTwoFactorCode== 0
(==0 1
	Providers==1 :
.==: ;
SelectedValue==; H
)==H I
)==I J
{>> 
Response?? 
.?? 
Redirect?? !
(??! "
$str??" 2
)??2 3
;??3 4
}@@ 
varBB 
userBB 
=BB 
managerBB 
.BB 
FindByIdBB '
(BB' (
signinManagerBB( 5
.BB5 6
GetVerifiedUserIdBB6 G
<BBG H
ApplicationUserBBH W
,BBW X
stringBBY _
>BB_ `
(BB` a
)BBa b
)BBb c
;BBc d
ifCC 
(CC 
userCC 
!=CC 
nullCC 
)CC 
{DD 
varEE 
codeEE 
=EE 
managerEE "
.EE" #"
GenerateTwoFactorTokenEE# 9
(EE9 :
userEE: >
.EE> ?
IdEE? A
,EEA B
	ProvidersEEC L
.EEL M
SelectedValueEEM Z
)EEZ [
;EE[ \
}FF 
SelectedProviderHH 
.HH 
ValueHH "
=HH# $
	ProvidersHH% .
.HH. /
SelectedValueHH/ <
;HH< =
sendcodeII 
.II 
VisibleII 
=II 
falseII $
;II$ %

verifycodeJJ 
.JJ 
VisibleJJ 
=JJ  
trueJJ! %
;JJ% &
}KK 	
}LL 
}MM ˇ
iC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\TwoFactorAuthenticationSignIn.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class )
TwoFactorAuthenticationSignIn 6
{7 8
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
PlaceHolder4 ?
sendcode@ H
;H I
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
DropDownList4 @
	ProvidersA J
;J K
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
Button((4 :
ProviderSubmit((; I
;((I J
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
PlaceHolder114 ?

verifycode11@ J
;11J K
	protected:: 
global:: 
:::: 
System::  
.::  !
Web::! $
.::$ %
UI::% '
.::' (
WebControls::( 3
.::3 4
HiddenField::4 ?
SelectedProvider::@ P
;::P Q
	protectedCC 
globalCC 
::CC 
SystemCC  
.CC  !
WebCC! $
.CC$ %
UICC% '
.CC' (
WebControlsCC( 3
.CC3 4
PlaceHolderCC4 ?
ErrorMessageCC@ L
;CCL M
	protectedLL 
globalLL 
::LL 
SystemLL  
.LL  !
WebLL! $
.LL$ %
UILL% '
.LL' (
WebControlsLL( 3
.LL3 4
LiteralLL4 ;
FailureTextLL< G
;LLG H
	protectedUU 
globalUU 
::UU 
SystemUU  
.UU  !
WebUU! $
.UU$ %
UIUU% '
.UU' (
WebControlsUU( 3
.UU3 4
TextBoxUU4 ;
CodeUU< @
;UU@ A
	protected^^ 
global^^ 
::^^ 
System^^  
.^^  !
Web^^! $
.^^$ %
UI^^% '
.^^' (
WebControls^^( 3
.^^3 4
CheckBox^^4 <
RememberBrowser^^= L
;^^L M
	protectedgg 
globalgg 
::gg 
Systemgg  
.gg  !
Webgg! $
.gg$ %
UIgg% '
.gg' (
WebControlsgg( 3
.gg3 4
Buttongg4 :

CodeSubmitgg; E
;ggE F
}hh 
}ii ª!
TC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\VerifyPhoneNumber.aspx.cs
	namespace

 	
Crazy


 
.

 
Account

 
{ 
public 

partial 
class 
VerifyPhoneNumber *
:+ ,
System- 3
.3 4
Web4 7
.7 8
UI8 :
.: ;
Page; ?
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
manager 
= 
Context !
.! "
GetOwinContext" 0
(0 1
)1 2
.2 3
GetUserManager3 A
<A B"
ApplicationUserManagerB X
>X Y
(Y Z
)Z [
;[ \
var 
phonenumber 
= 
Request %
.% &
QueryString& 1
[1 2
$str2 ?
]? @
;@ A
var 
code 
= 
manager 
. *
GenerateChangePhoneNumberToken =
(= >
User> B
.B C
IdentityC K
.K L
	GetUserIdL U
(U V
)V W
,W X
phonenumberY d
)d e
;e f
PhoneNumber 
. 
Value 
= 
phonenumber  +
;+ ,
} 	
	protected 
void 

Code_Click !
(! "
object" (
sender) /
,/ 0
	EventArgs1 :
e; <
)< =
{ 	
if 
( 
! 

ModelState 
. 
IsValid #
)# $
{ 

ModelState 
. 
AddModelError (
(( )
$str) +
,+ ,
$str- ;
); <
;< =
return 
; 
} 
var 
manager 
= 
Context !
.! "
GetOwinContext" 0
(0 1
)1 2
.2 3
GetUserManager3 A
<A B"
ApplicationUserManagerB X
>X Y
(Y Z
)Z [
;[ \
var 
signInManager 
= 
Context  '
.' (
GetOwinContext( 6
(6 7
)7 8
.8 9
Get9 <
<< =$
ApplicationSignInManager= U
>U V
(V W
)W X
;X Y
var!! 
result!! 
=!! 
manager!!  
.!!  !
ChangePhoneNumber!!! 2
(!!2 3
User!!3 7
.!!7 8
Identity!!8 @
.!!@ A
	GetUserId!!A J
(!!J K
)!!K L
,!!L M
PhoneNumber!!N Y
.!!Y Z
Value!!Z _
,!!_ `
Code!!a e
.!!e f
Text!!f j
)!!j k
;!!k l
if## 
(## 
result## 
.## 
	Succeeded##  
)##  !
{$$ 
var%% 
user%% 
=%% 
manager%% "
.%%" #
FindById%%# +
(%%+ ,
User%%, 0
.%%0 1
Identity%%1 9
.%%9 :
	GetUserId%%: C
(%%C D
)%%D E
)%%E F
;%%F G
if'' 
('' 
user'' 
!='' 
null''  
)''  !
{(( 
signInManager)) !
.))! "
SignIn))" (
())( )
user))) -
,))- .
isPersistent))/ ;
:)); <
false))= B
,))B C
rememberBrowser))D S
:))S T
false))U Z
)))Z [
;))[ \
Response** 
.** 
Redirect** %
(**% &
$str**& O
)**O P
;**P Q
}++ 
},, 

ModelState// 
.// 
AddModelError// $
(//$ %
$str//% '
,//' (
$str//) A
)//A B
;//B C
}00 	
}11 
}22 ƒ
]C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Account\VerifyPhoneNumber.aspx.designer.cs
	namespace

 	
Crazy


 
.

 
Account

 
{

 
public 

partial 
class 
VerifyPhoneNumber *
{+ ,
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
Literal4 ;
ErrorMessage< H
;H I
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
HiddenField4 ?
PhoneNumber@ K
;K L
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
TextBox((4 ;
Code((< @
;((@ A
})) 
}** ’
LC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\App_Start\BundleConfig.cs
	namespace 	
Crazy
 
{		 
public

 

class

 
BundleConfig

 
{ 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{ 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ?
)? @
.@ A
IncludeA H
(H I
$str <
,< =
$str C
,C D
$str A
,A B
$str 9
,9 :
$str <
,< =
$str ?
,? @
$str <
,< =
$str <
)< =
)= >
;> ?
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) =
)= >
.> ?
Include? F
(F G
$str @
,@ A
$str S
,S T
$str E
,E F
$str H
)H I
)I J
;J K
bundles"" 
."" 
Add"" 
("" 
new"" 
ScriptBundle"" (
(""( )
$str"") >
)""> ?
.""? @
Include""@ G
(""G H
$str## 3
)##3 4
)##4 5
;##5 6
ScriptManager%% 
.%% !
ScriptResourceMapping%% /
.%%/ 0
AddDefinition%%0 =
(%%= >
$str&& 
,&& 
new'' $
ScriptResourceDefinition'' ,
{(( 
Path)) 
=)) 
$str)) 5
,))5 6
	DebugPath** 
=** 
$str**  6
,**6 7
}++ 
)++ 
;++ 
},, 	
}-- 
}.. ª:
NC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\App_Start\IdentityConfig.cs
	namespace 	
Crazy
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public   

class   "
ApplicationUserManager   '
:  ( )
UserManager  * 5
<  5 6
ApplicationUser  6 E
>  E F
{!! 
public"" "
ApplicationUserManager"" %
(""% &

IUserStore""& 0
<""0 1
ApplicationUser""1 @
>""@ A
store""B G
)""G H
:## 
base## 
(## 
store## 
)## 
{$$ 	
}%% 	
public'' 
static'' "
ApplicationUserManager'' ,
Create''- 3
(''3 4"
IdentityFactoryOptions''4 J
<''J K"
ApplicationUserManager''K a
>''a b
options''c j
,''j k
IOwinContext''l x
context	''y Ä
)
''Ä Å
{(( 	
var)) 
manager)) 
=)) 
new)) "
ApplicationUserManager)) 4
())4 5
new))5 8
	UserStore))9 B
<))B C
ApplicationUser))C R
>))R S
())S T
context))T [
.))[ \
Get))\ _
<))_ ` 
ApplicationDbContext))` t
>))t u
())u v
)))v w
)))w x
)))x y
;))y z
manager++ 
.++ 
UserValidator++ !
=++" #
new++$ '
UserValidator++( 5
<++5 6
ApplicationUser++6 E
>++E F
(++F G
manager++G N
)++N O
{,, *
AllowOnlyAlphanumericUserNames-- .
=--/ 0
false--1 6
,--6 7
RequireUniqueEmail.. "
=..# $
true..% )
}// 
;// 
manager22 
.22 
PasswordValidator22 %
=22& '
new22( +
PasswordValidator22, =
{33 
RequiredLength44 
=44  
$num44! "
,44" ##
RequireNonLetterOrDigit55 '
=55( )
true55* .
,55. /
RequireDigit66 
=66 
true66 #
,66# $
RequireLowercase77  
=77! "
true77# '
,77' (
RequireUppercase88  
=88! "
true88# '
,88' (
}99 
;99 
manager== 
.== %
RegisterTwoFactorProvider== -
(==- .
$str==. :
,==: ;
new==< ?$
PhoneNumberTokenProvider==@ X
<==X Y
ApplicationUser==Y h
>==h i
{>> 
MessageFormat?? 
=?? 
$str??  ;
}@@ 
)@@ 
;@@ 
managerAA 
.AA %
RegisterTwoFactorProviderAA -
(AA- .
$strAA. :
,AA: ;
newAA< ?
EmailTokenProviderAA@ R
<AAR S
ApplicationUserAAS b
>AAb c
{BB 
SubjectCC 
=CC 
$strCC )
,CC) *

BodyFormatDD 
=DD 
$strDD 8
}EE 
)EE 
;EE 
managerHH 
.HH '
UserLockoutEnabledByDefaultHH /
=HH0 1
trueHH2 6
;HH6 7
managerII 
.II )
DefaultAccountLockoutTimeSpanII 1
=II2 3
TimeSpanII4 <
.II< =
FromMinutesII= H
(IIH I
$numIII J
)IIJ K
;IIK L
managerJJ 
.JJ 0
$MaxFailedAccessAttemptsBeforeLockoutJJ 8
=JJ9 :
$numJJ; <
;JJ< =
managerLL 
.LL 
EmailServiceLL  
=LL! "
newLL# &
EmailServiceLL' 3
(LL3 4
)LL4 5
;LL5 6
managerMM 
.MM 

SmsServiceMM 
=MM  
newMM! $

SmsServiceMM% /
(MM/ 0
)MM0 1
;MM1 2
varNN "
dataProtectionProviderNN &
=NN' (
optionsNN) 0
.NN0 1"
DataProtectionProviderNN1 G
;NNG H
ifOO 
(OO "
dataProtectionProviderOO &
!=OO' )
nullOO* .
)OO. /
{PP 
managerQQ 
.QQ 
UserTokenProviderQQ )
=QQ* +
newQQ, /&
DataProtectorTokenProviderQQ0 J
<QQJ K
ApplicationUserQQK Z
>QQZ [
(QQ[ \"
dataProtectionProviderQQ\ r
.QQr s
CreateQQs y
(QQy z
$str	QQz å
)
QQå ç
)
QQç é
;
QQé è
}RR 
returnSS 
managerSS 
;SS 
}TT 	
}UU 
publicWW 

classWW $
ApplicationSignInManagerWW )
:WW* +
SignInManagerWW, 9
<WW9 :
ApplicationUserWW: I
,WWI J
stringWWK Q
>WWQ R
{XX 
publicYY $
ApplicationSignInManagerYY '
(YY' ("
ApplicationUserManagerYY( >
userManagerYY? J
,YYJ K"
IAuthenticationManagerYYL b!
authenticationManagerYYc x
)YYx y
:YYz {
baseZZ 
(ZZ 
userManagerZZ 
,ZZ !
authenticationManagerZZ 3
)ZZ3 4
{ZZ5 6
}ZZ7 8
public\\ 
override\\ 
Task\\ 
<\\ 
ClaimsIdentity\\ +
>\\+ ,#
CreateUserIdentityAsync\\- D
(\\D E
ApplicationUser\\E T
user\\U Y
)\\Y Z
{]] 	
return^^ 
user^^ 
.^^ %
GenerateUserIdentityAsync^^ 1
(^^1 2
(^^2 3"
ApplicationUserManager^^3 I
)^^I J
UserManager^^J U
)^^U V
;^^V W
}__ 	
publicaa 
staticaa $
ApplicationSignInManageraa .
Createaa/ 5
(aa5 6"
IdentityFactoryOptionsaa6 L
<aaL M$
ApplicationSignInManageraaM e
>aae f
optionsaag n
,aan o
IOwinContextaap |
context	aa} Ñ
)
aaÑ Ö
{bb 	
returncc 
newcc $
ApplicationSignInManagercc /
(cc/ 0
contextcc0 7
.cc7 8
GetUserManagercc8 F
<ccF G"
ApplicationUserManagerccG ]
>cc] ^
(cc^ _
)cc_ `
,cc` a
contextccb i
.cci j
Authenticationccj x
)ccx y
;ccy z
}dd 	
}ee 
}ff Ä
KC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\App_Start\RouteConfig.cs
	namespace 	
Crazy
 
{ 
public		 

static		 
class		 
RouteConfig		 #
{

 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
var 
settings 
= 
new 
FriendlyUrlSettings 2
(2 3
)3 4
;4 5
settings 
. 
AutoRedirectMode %
=& '
RedirectMode( 4
.4 5
	Permanent5 >
;> ?
routes 
. 
EnableFriendlyUrls %
(% &
settings& .
). /
;/ 0
} 	
} 
} Ê
LC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\App_Start\Startup.Auth.cs
	namespace 	
Crazy
 
{ 
public 

partial 
class 
Startup  
{! "
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{   
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app'' 
.'' #
UseExternalSignInCookie'' '
(''' (&
DefaultAuthenticationTypes''( B
.''B C
ExternalCookie''C Q
)''Q R
;''R S
app** 
.** $
UseTwoFactorSignInCookie** (
(**( )&
DefaultAuthenticationTypes**) C
.**C D
TwoFactorCookie**D S
,**S T
TimeSpan**U ]
.**] ^
FromMinutes**^ i
(**i j
$num**j k
)**k l
)**l m
;**m n
app// 
.// -
!UseTwoFactorRememberBrowserCookie// 1
(//1 2&
DefaultAuthenticationTypes//2 L
.//L M*
TwoFactorRememberBrowserCookie//M k
)//k l
;//l m
}CC 	
}DD 
}EE Ô
BC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Contact.aspx.cs
	namespace 	
Crazy
 
{		 
public

 

partial

 
class

 
Contact

  
:

! "
Page

# '
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ˛
KC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Contact.aspx.designer.cs
	namespace

 	
Crazy


 
{ 
public 

partial 
class 
Contact  
{ 
} 
} 
BC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Default.aspx.cs
	namespace 	
Crazy
 
{		 
public

 

partial

 
class

 
_Default

 !
:

" #
Page

$ (
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ˇ
KC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Default.aspx.designer.cs
	namespace

 	
Crazy


 
{ 
public 

partial 
class 
_Default !
{ 
} 
} ∞
AC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Global.asax.cs
	namespace

 	
Crazy


 
{ 
public 

class 
Global 
: 
HttpApplication )
{ 
void 
Application_Start 
( 
object %
sender& ,
,, -
	EventArgs. 7
e8 9
)9 :
{ 	
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ó?
KC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Models\IdentityModels.cs
	namespace 	
Crazy
 
. 
Models 
{ 
public 

class 
ApplicationUser  
:! "
IdentityUser# /
{ 
public 
ClaimsIdentity  
GenerateUserIdentity 2
(2 3"
ApplicationUserManager3 I
managerJ Q
)Q R
{ 	
var 
userIdentity 
= 
manager &
.& '
CreateIdentity' 5
(5 6
this6 :
,: ;&
DefaultAuthenticationTypes< V
.V W
ApplicationCookieW h
)h i
;i j
return 
userIdentity 
;  
} 	
public 
Task 
< 
ClaimsIdentity "
>" #%
GenerateUserIdentityAsync$ =
(= >"
ApplicationUserManager> T
managerU \
)\ ]
{ 	
return 
Task 
. 

FromResult "
(" # 
GenerateUserIdentity# 7
(7 8
manager8 ?
)? @
)@ A
;A B
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public    
ApplicationDbContext   #
(  # $
)  $ %
:!! 
base!! 
(!! 
$str!! &
,!!& '
throwIfV1Schema!!( 7
:!!7 8
false!!9 >
)!!> ?
{"" 	
}## 	
public%% 
static%%  
ApplicationDbContext%% *
Create%%+ 1
(%%1 2
)%%2 3
{&& 	
return'' 
new''  
ApplicationDbContext'' +
(''+ ,
)'', -
;''- .
}(( 	
})) 
}** 
	namespace-- 	
Crazy--
 
{.. 
public// 

static// 
class// 
IdentityHelper// &
{00 
public22 
const22 
string22 
XsrfKey22 #
=22$ %
$str22& .
;22. /
public44 
const44 
string44 
ProviderNameKey44 +
=44, -
$str44. <
;44< =
public55 
static55 
string55 &
GetProviderNameFromRequest55 7
(557 8
HttpRequest558 C
request55D K
)55K L
{66 	
return77 
request77 
.77 
QueryString77 &
[77& '
ProviderNameKey77' 6
]776 7
;777 8
}88 	
public:: 
const:: 
string:: 
CodeKey:: #
=::$ %
$str::& ,
;::, -
public;; 
static;; 
string;; 
GetCodeFromRequest;; /
(;;/ 0
HttpRequest;;0 ;
request;;< C
);;C D
{<< 	
return== 
request== 
.== 
QueryString== &
[==& '
CodeKey==' .
]==. /
;==/ 0
}>> 	
public@@ 
const@@ 
string@@ 
	UserIdKey@@ %
=@@& '
$str@@( 0
;@@0 1
publicAA 
staticAA 
stringAA  
GetUserIdFromRequestAA 1
(AA1 2
HttpRequestAA2 =
requestAA> E
)AAE F
{BB 	
returnCC 
HttpUtilityCC 
.CC 
	UrlDecodeCC (
(CC( )
requestCC) 0
.CC0 1
QueryStringCC1 <
[CC< =
	UserIdKeyCC= F
]CCF G
)CCG H
;CCH I
}DD 	
publicFF 
staticFF 
stringFF '
GetResetPasswordRedirectUrlFF 8
(FF8 9
stringFF9 ?
codeFF@ D
,FFD E
HttpRequestFFF Q
requestFFR Y
)FFY Z
{GG 	
varHH 
absoluteUriHH 
=HH 
$strHH 7
+HH8 9
CodeKeyHH: A
+HHB C
$strHHD G
+HHH I
HttpUtilityHHJ U
.HHU V
	UrlEncodeHHV _
(HH_ `
codeHH` d
)HHd e
;HHe f
returnII 
newII 
UriII 
(II 
requestII "
.II" #
UrlII# &
,II& '
absoluteUriII( 3
)II3 4
.II4 5
AbsoluteUriII5 @
.II@ A
ToStringIIA I
(III J
)IIJ K
;IIK L
}JJ 	
publicLL 
staticLL 
stringLL *
GetUserConfirmationRedirectUrlLL ;
(LL; <
stringLL< B
codeLLC G
,LLG H
stringLLI O
userIdLLP V
,LLV W
HttpRequestLLX c
requestLLd k
)LLk l
{MM 	
varNN 
absoluteUriNN 
=NN 
$strNN 1
+NN2 3
CodeKeyNN4 ;
+NN< =
$strNN> A
+NNB C
HttpUtilityNND O
.NNO P
	UrlEncodeNNP Y
(NNY Z
codeNNZ ^
)NN^ _
+NN` a
$strNNb e
+NNf g
	UserIdKeyNNh q
+NNr s
$strNNt w
+NNx y
HttpUtility	NNz Ö
.
NNÖ Ü
	UrlEncode
NNÜ è
(
NNè ê
userId
NNê ñ
)
NNñ ó
;
NNó ò
returnOO 
newOO 
UriOO 
(OO 
requestOO "
.OO" #
UrlOO# &
,OO& '
absoluteUriOO( 3
)OO3 4
.OO4 5
AbsoluteUriOO5 @
.OO@ A
ToStringOOA I
(OOI J
)OOJ K
;OOK L
}PP 	
privateRR 
staticRR 
boolRR 

IsLocalUrlRR &
(RR& '
stringRR' -
urlRR. 1
)RR1 2
{SS 	
returnTT 
!TT 
stringTT 
.TT 
IsNullOrEmptyTT (
(TT( )
urlTT) ,
)TT, -
&&TT. 0
(TT1 2
(TT2 3
urlTT3 6
[TT6 7
$numTT7 8
]TT8 9
==TT: <
$charTT= @
&&TTA C
(TTD E
urlTTE H
.TTH I
LengthTTI O
==TTP R
$numTTS T
||TTU W
(TTX Y
urlTTY \
[TT\ ]
$numTT] ^
]TT^ _
!=TT` b
$charTTc f
&&TTg i
urlTTj m
[TTm n
$numTTn o
]TTo p
!=TTq s
$charTTt x
)TTx y
)TTy z
)TTz {
||TT| ~
(	TT Ä
url
TTÄ É
.
TTÉ Ñ
Length
TTÑ ä
>
TTã å
$num
TTç é
&&
TTè ë
url
TTí ï
[
TTï ñ
$num
TTñ ó
]
TTó ò
==
TTô õ
$char
TTú ü
&&
TT† ¢
url
TT£ ¶
[
TT¶ ß
$num
TTß ®
]
TT® ©
==
TT™ ¨
$char
TT≠ ∞
)
TT∞ ±
)
TT± ≤
;
TT≤ ≥
}UU 	
publicWW 
staticWW 
voidWW 
RedirectToReturnUrlWW .
(WW. /
stringWW/ 5
	returnUrlWW6 ?
,WW? @
HttpResponseWWA M
responseWWN V
)WWV W
{XX 	
ifYY 
(YY 
!YY 
StringYY 
.YY 
IsNullOrEmptyYY %
(YY% &
	returnUrlYY& /
)YY/ 0
&&YY1 3

IsLocalUrlYY4 >
(YY> ?
	returnUrlYY? H
)YYH I
)YYI J
{ZZ 
response[[ 
.[[ 
Redirect[[ !
([[! "
	returnUrl[[" +
)[[+ ,
;[[, -
}\\ 
else]] 
{^^ 
response__ 
.__ 
Redirect__ !
(__! "
$str__" &
)__& '
;__' (
}`` 
}aa 	
}bb 
}cc ¯
MC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str  
)  !
]! "
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str "
)" #
]# $
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *ß+
AC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Site.Master.cs
	namespace 	
Crazy
 
{ 
public 

partial 
class 

SiteMaster #
:$ %

MasterPage& 0
{ 
private 
const 
string 
AntiXsrfTokenKey -
=. /
$str0 A
;A B
private 
const 
string 
AntiXsrfUserNameKey 0
=1 2
$str3 G
;G H
private 
string 
_antiXsrfTokenValue *
;* +
	protected 
void 
	Page_Init  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
requestCookie 
= 
Request  '
.' (
Cookies( /
[/ 0
AntiXsrfTokenKey0 @
]@ A
;A B
Guid "
requestCookieGuidValue '
;' (
if 
( 
requestCookie 
!=  
null! %
&&& (
Guid) -
.- .
TryParse. 6
(6 7
requestCookie7 D
.D E
ValueE J
,J K
outL O"
requestCookieGuidValueP f
)f g
)g h
{ 
_antiXsrfTokenValue #
=$ %
requestCookie& 3
.3 4
Value4 9
;9 :
Page 
. 
ViewStateUserKey %
=& '
_antiXsrfTokenValue( ;
;; <
} 
else 
{ 
_antiXsrfTokenValue!! #
=!!$ %
Guid!!& *
.!!* +
NewGuid!!+ 2
(!!2 3
)!!3 4
.!!4 5
ToString!!5 =
(!!= >
$str!!> A
)!!A B
;!!B C
Page"" 
."" 
ViewStateUserKey"" %
=""& '
_antiXsrfTokenValue""( ;
;""; <
var$$ 
responseCookie$$ "
=$$# $
new$$% (

HttpCookie$$) 3
($$3 4
AntiXsrfTokenKey$$4 D
)$$D E
{%% 
HttpOnly&& 
=&& 
true&& #
,&&# $
Value'' 
='' 
_antiXsrfTokenValue'' /
}(( 
;(( 
if)) 
()) 
FormsAuthentication)) '
.))' (

RequireSSL))( 2
&&))3 5
Request))6 =
.))= >
IsSecureConnection))> P
)))P Q
{** 
responseCookie++ "
.++" #
Secure++# )
=++* +
true++, 0
;++0 1
},, 
Response-- 
.-- 
Cookies--  
.--  !
Set--! $
(--$ %
responseCookie--% 3
)--3 4
;--4 5
}.. 
Page00 
.00 
PreLoad00 
+=00 
master_Page_PreLoad00 /
;00/ 0
}11 	
	protected33 
void33 
master_Page_PreLoad33 *
(33* +
object33+ 1
sender332 8
,338 9
	EventArgs33: C
e33D E
)33E F
{44 	
if55 
(55 
!55 

IsPostBack55 
)55 
{66 
	ViewState88 
[88 
AntiXsrfTokenKey88 *
]88* +
=88, -
Page88. 2
.882 3
ViewStateUserKey883 C
;88C D
	ViewState99 
[99 
AntiXsrfUserNameKey99 -
]99- .
=99/ 0
Context991 8
.998 9
User999 =
.99= >
Identity99> F
.99F G
Name99G K
??99L N
String99O U
.99U V
Empty99V [
;99[ \
}:: 
else;; 
{<< 
if>> 
(>> 
(>> 
string>> 
)>> 
	ViewState>> %
[>>% &
AntiXsrfTokenKey>>& 6
]>>6 7
!=>>8 :
_antiXsrfTokenValue>>; N
||?? 
(?? 
string?? 
)?? 
	ViewState?? (
[??( )
AntiXsrfUserNameKey??) <
]??< =
!=??> @
(??A B
Context??B I
.??I J
User??J N
.??N O
Identity??O W
.??W X
Name??X \
????] _
String??` f
.??f g
Empty??g l
)??l m
)??m n
{@@ 
throwAA 
newAA %
InvalidOperationExceptionAA 7
(AA7 8
$strAA8 _
)AA_ `
;AA` a
}BB 
}CC 
}DD 	
	protectedFF 
voidFF 
	Page_LoadFF  
(FF  !
objectFF! '
senderFF( .
,FF. /
	EventArgsFF0 9
eFF: ;
)FF; <
{GG 	
}II 	
	protectedKK 
voidKK 
Unnamed_LoggingOutKK )
(KK) *
objectKK* 0
senderKK1 7
,KK7 8 
LoginCancelEventArgsKK9 M
eKKN O
)KKO P
{LL 	
ContextMM 
.MM 
GetOwinContextMM "
(MM" #
)MM# $
.MM$ %
AuthenticationMM% 3
.MM3 4
SignOutMM4 ;
(MM; <&
DefaultAuthenticationTypesMM< V
.MMV W
ApplicationCookieMMW h
)MMh i
;MMi j
}NN 	
}OO 
}QQ è
JC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Site.Master.designer.cs
	namespace

 	
Crazy


 
{

 
public 

partial 
class 

SiteMaster #
{$ %
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
ContentPlaceHolder4 F
MainContentG R
;R S
} 
} ·
HC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Site.Mobile.Master.cs
	namespace 	
Crazy
 
{		 
public

 

partial

 
class

 
Site_Mobile

 $
:

% &
System

' -
.

- .
Web

. 1
.

1 2
UI

2 4
.

4 5

MasterPage

5 ?
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ≥

QC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Site.Mobile.Master.designer.cs
	namespace

 	
Crazy


 
{

 
public 

partial 
class 
Site_Mobile $
{% &
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
WebControls( 3
.3 4
ContentPlaceHolder4 F
HeadContentG R
;R S
	protected 
global 
:: 
System  
.  !
Web! $
.$ %
UI% '
.' (
HtmlControls( 4
.4 5
HtmlForm5 =
form1> C
;C D
	protected(( 
global(( 
::(( 
System((  
.((  !
Web((! $
.(($ %
UI((% '
.((' (
WebControls((( 3
.((3 4
ContentPlaceHolder((4 F
FeaturedContent((G V
;((V W
	protected11 
global11 
::11 
System11  
.11  !
Web11! $
.11$ %
UI11% '
.11' (
WebControls11( 3
.113 4
ContentPlaceHolder114 F
MainContent11G R
;11R S
}22 
}33 ⁄
=C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
Crazy' ,
., -
Startup- 4
)4 5
)5 6
]6 7
	namespace 	
Crazy
 
{ 
public 

partial 
class 
Startup  
{! "
public 
void 
Configuration !
(! "
IAppBuilder" -
app. 1
)1 2
{3 4
ConfigureAuth		 
(		 
app		 
)		 
;		 
}

 	
} 
} ì
GC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\ViewSwitcher.ascx.cs
	namespace

 	
Crazy


 
{ 
public 

partial 
class 
ViewSwitcher %
:& '
System( .
.. /
Web/ 2
.2 3
UI3 5
.5 6
UserControl6 A
{ 
	protected 
string 
CurrentView $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
	protected 
string 
AlternateView &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
	protected 
string 
	SwitchUrl "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
isMobile 
= '
WebFormsFriendlyUrlResolver 6
.6 7
IsMobileView7 C
(C D
newD G
HttpContextWrapperH Z
(Z [
Context[ b
)b c
)c d
;d e
CurrentView 
= 
isMobile "
?# $
$str% -
:. /
$str0 9
;9 :
AlternateView 
= 
isMobile $
?% &
$str' 0
:1 2
$str3 ;
;; <
var 
switchViewRouteName #
=$ %
$str& F
;F G
var 
switchViewRoute 
=  !

RouteTable" ,
., -
Routes- 3
[3 4
switchViewRouteName4 G
]G H
;H I
if   
(   
switchViewRoute   
==    "
null  # '
)  ' (
{!! 
this## 
.## 
Visible## 
=## 
false## $
;##$ %
return$$ 
;$$ 
}%% 
var&& 
url&& 
=&& 
GetRouteUrl&& !
(&&! "
switchViewRouteName&&" 5
,&&5 6
new&&7 :
{&&; <
view&&= A
=&&B C
AlternateView&&D Q
,&&Q R&
__FriendlyUrls_SwitchViews&&S m
=&&n o
true&&p t
}&&u v
)&&v w
;&&w x
url'' 
+='' 
$str''  
+''! "
HttpUtility''# .
.''. /
	UrlEncode''/ 8
(''8 9
Request''9 @
.''@ A
RawUrl''A G
)''G H
;''H I
	SwitchUrl(( 
=(( 
url(( 
;(( 
})) 	
}** 
}++ ä
PC:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\ViewSwitcher.ascx.designer.cs
	namespace

 	
Crazy


 
{

 
public 

partial 
class 
ViewSwitcher %
{& '
} 
} }
{C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs}
{C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs}
{C:\Users\jemimal.j\Downloads\ssds\ssds\Crazy\Crazy\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs