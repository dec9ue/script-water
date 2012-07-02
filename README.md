script-water
============

this is a script which represents water.

Syntax
----
* ι ＝ アブストラクション。終了はかならず適用でマークする。
* ～* ＝ 変数参照 (cf. De Bruijn index)
* っ ＝ アブストラクションの終了。
* ／...／ ＝ primitive
* ＼...＼...＼...
   - ＝ strict。WHNFまで評価する。後ろにstrictがある場合、その評価結果を次のstrictに渡す。。
   - ＼には暗黙のabstractionを仮定する。先頭のabstractionには超適当な値が渡される。

Samples
----
* Kコンビネータ：
   - \x y → x
   - ιι～～っっ
* I：
   - \x → x
   - ι～っ
* チャーチ数：
   - 0 \f x → x
   - ιι ～っっ
   - 1 \f x → f x 
   - ιι～～ ～っっ

Formal Definition
----
expr : app_seq
     | strict_seq
abs  : "ι" expr "っ";
var  : "～"*
non_app_expr : abs
             | var
app_seq  : app_seq  non_app_expr
         | non_app_expr
strict_seq  : strict_expr strict_seq
strict_expr : "＼" expr

