script-water
============

this is a script which represents water.

Syntax
----
* Η  AuXgNVBIΉΝ©ΘηΈKpΕ}[N·ιB
* `*  ΟQΖ (cf. De Bruijn index)
* Α  AuXgNVΜIΉB
* ^...^  primitive
* _..._..._...
   -  strictBWHNFάΕ]Ώ·ιBγλΙstrictͺ ικA»Μ]ΏΚπΜstrictΙn·BB
   - _ΙΝΓΩΜabstractionπΌθ·ιBζͺΜabstractionΙΝ΄KΘlͺn³κιB

Samples
----
* KRrl[^F
   - \x y ¨ x
   - ΗΗ``ΑΑ
* IF
   - \x ¨ x
   - Η`Α
* `[`F
   - 0 \f x ¨ x
   - ΗΗ `ΑΑ
   - 1 \f x ¨ f x 
   - ΗΗ`` `ΑΑ

Formal Definition
----
```
expr : app_seq
     | strict_seq
abs  : "Η" expr "Α";
var  : "`"*
non_app_expr : abs
             | var
app_seq  : app_seq  non_app_expr
         | non_app_expr
strict_seq  : strict_expr strict_seq
strict_expr : "_" expr
```
