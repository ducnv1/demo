<!--{*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *}-->

�����ƥå�����饤�������ĺ��������ͭ�񤦤������ޤ���

�����١�����ӥ˷�ѤˤƤ���ʸ��Ͽĺ���ޤ�����������ʸ�ˤĤ��ޤ��ơ�
����ʧ���������äƤޤ���ޤ�����
����ӥ˷�Ѥ����Ѥξ�硢����ʸ������10�����᤮�ޤ��ȡ������⤬����ʤ��ʤꡢ
��ưŪ�˥���󥻥�ȤʤäƤ��ޤ��ޤ���

�ޤ������ʤΤ��Ϥ��ϡ��������ǧ��Ȥʤ�ޤ���
��������ݤ��������ޤ�����������ʧ�����ޤǤˤ�����Υ���ӥˤ����֤��Ƥ���ޤ���
����ü����ꤴ����򤪴ꤤ�������ޤ���

******************************************************************
����������Ȥ�������
******************************************************************
����ʸ�ֹ桧<!--{$arrOrder.order_id}-->
����ʸ������<!--{$arrOrder.create_date}-->
����ʧ��ס��� <!--{$arrOrder.payment_total|number_format|default:0}-->
�������ˡ��<!--{$arrOrder.payment_method}-->
���Ϥ����֡�<!--{$arrOrder.deliv_time|default:"����ʤ�"}-->
��å�������<!--{$Message_tmp}-->
�����Ϥ���
����̾������<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->����
��͹���ֹ桧��<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
�������ꡡ��<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
�������ֹ桧<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->

<!--{if $arrOther.title.value }-->
******************************************************************
��<!--{$arrOther.title.name}-->����
******************************************************************
<!--{foreach key=key item=item from=$arrOther}-->
<!--{if $key != "title"}-->
<!--{if $item.name != ""}--><!--{$item.name}-->��<!--{/if}--><!--{$item.value}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->
******************************************************************
������ʸ��������
******************************************************************
<!--{section name=cnt loop=$arrOrderDetail}-->
����̾: <!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
���ʥ�����: <!--{$arrOrderDetail[cnt].product_code}-->
���̡�<!--{$arrOrderDetail[cnt].quantity}--> 
��ۡ��� <!--{$arrOrderDetail[cnt].price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->

<!--{/section}-->
-----------------------------------------------------------
������ �� <!--{$arrOrder.subtotal|number_format|default:0}--> (���������� ��<!--{$arrOrder.tax|number_format|default:0}-->��
�Ͱ��� �� <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
������ �� <!--{$arrOrder.deliv_fee|number_format|default:0}-->
����� �� <!--{$arrOrder.charge|number_format|default:0}-->
===============================================================
�硡�� �� <!--{$arrOrder.payment_total|number_format|default:0}-->
===============================================================
<!--{if $arrOrder.coupon_rate > 0}-->
�����ݥ��������<!--{$arrOrder.coupon_rate|default:0}-->���
<!--{/if}-->

���Υ�å������Ϥ����ͤؤΤ��Τ餻���ѤǤ��Τǡ�
���Υ�å������ؤ��ֿ��Ȥ��Ƥ���������ꤤ�������Ƥ�����Ǥ��ޤ���
��λ������������

������䤴�����������������ޤ����顢�����գң̤��餪�䤤��碌��������
https://www.itec.co.jp/contact/
