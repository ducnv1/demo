<!--{*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *}-->

******************************************************************
����������Ȥ�������
******************************************************************
����ʸ�ֹ桧<!--{$arrOrder.order_id}-->
����ʸ������<!--{$arrOrder.create_date}-->
����ʧ��ס��� <!--{$arrOrder.payment_total|number_format|default:0}-->
�������ˡ��<!--{$arrOrder.payment_method}-->
<!--{if $arrOrder.account_num != ""}--><!--{* 2013/9/3 tnamiki *}-->
�������衡��<!--{$smarty.const.BANK_NAME}--><!--{$arrOrder.account_num}-->
<!--{/if}-->
<!--{if $arrOrder.payment_div == 1}-->
���� ��������ǧ�����������ʤ�ȯ�������Ƥ��������ޤ���
<!--{/if}-->
��å�������<!--{$Message_tmp}-->
�����Ϥ���
<!--{if $arrOrder.deliv_check != -99}-->
��<!--{$arrOrder.deliv_company_name}--> <!--{$arrOrder.deliv_pos_post_name}-->
����̾������<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->����
��͹���ֹ桧��<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
�������ꡡ��<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
�������ֹ桧<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->
<!--{else}-->
��My�ڡ����ι������������ꤴ��ǧ����������
<!--{/if}-->

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
<!--{assign var=deliv_fee value=$arrOrder.deliv_fee|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule}-->
<!--{assign var=deliv_fee_tax value=$deliv_fee-$arrOrder.deliv_fee}-->
������ �� <!--{$arrOrder.subtotal|number_format|default:0}--> (���������� ��<!--{$arrOrder.tax-$deliv_fee_tax|number_format|default:0}-->��
�Ͱ��� �� <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
������ �� <!--{$deliv_fee|number_format|default:0}--><!--{if $deliv_fee > 0}--> (���������� ��<!--{$deliv_fee_tax|number_format|default:0}-->)<!--{"\n"}--><!--{else}--><!--{"\n"}--><!--{/if}-->
����� �� <!--{$arrOrder.charge|number_format|default:0}-->
===============================================================
�硡�� �� <!--{$arrOrder.payment_total|number_format|default:0}-->
===============================================================
<!--{if $arrCustomer.discount_rate > 0}-->
���Ψ�� <!--{$arrCustomer.discount_rate|default:0}--> ��
<!--{/if}-->

<!--{if count($arrAttInfo) > 0}-->
******************************************************************
�����ξ��ʤ���ʸ���줿�����ͤؤΤ�����
******************************************************************
<!--{section name=cnt loop=$arrAttInfo}-->
����̾��<!--{$arrAttInfo[cnt].name}-->
<!--{$arrAttInfo[cnt].sub_comment5}-->

<!--{/section}-->
<!--{/if}-->
<!--{if count($arrOthInfo) > 0}-->
******************************************************************
�����㤤�夲�ξ��ʤδ�Ϣ����
******************************************************************
<!--{section name=cnt loop=$arrOthInfo}-->
����̾��<!--{$arrOthInfo[cnt].product_name}-->
<!--{$arrOthInfo[cnt].comment}-->

<!--{/section}-->
<!--{/if}-->

<!--{if $arrOrder.payment_div == 1}--><!--{* 2008/11/27 kishi *}-->
******************************************************************
�������ˤĤ���
******************************************************************
������ȯ�Ԥϡ�MY�ڡ����פΡֹ�������ܺٲ��̡פ��餴���Ѥ��������ޤ���
<!--{/if}-->
