script-water
============

this is a script which represents water.

Syntax
----
* �� �� �A�u�X�g���N�V�����B�I���͂��Ȃ炸�K�p�Ń}�[�N����B
* �`* �� �ϐ��Q�� (cf. De Bruijn index)
* �� �� �A�u�X�g���N�V�����̏I���B
* �^...�^ �� primitive
* �_...�_...�_...
   - �� strict�BWHNF�܂ŕ]������B����strict������ꍇ�A���̕]�����ʂ�����strict�ɓn���B�B
   - �_�ɂ͈Öق�abstraction�����肷��B�擪��abstraction�ɂ͒��K���Ȓl���n�����B

Samples
----
* K�R���r�l�[�^�F
   - \x y �� x
   - �ǃǁ`�`����
* I�F
   - \x �� x
   - �ǁ`��
* �`���[�`���F
   - 0 \f x �� x
   - �ǃ� �`����
   - 1 \f x �� f x 
   - �ǃǁ`�` �`����

Formal Definition
----
expr : app_seq
     | strict_seq
abs  : "��" expr "��";
var  : "�`"*
non_app_expr : abs
             | var
app_seq  : app_seq  non_app_expr
         | non_app_expr
strict_seq  : strict_expr strict_seq
strict_expr : "�_" expr

