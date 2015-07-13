<!--{*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *}-->

******************************************************************
　配送情報とご請求金額
******************************************************************
ご注文番号：<!--{$arrOrder.order_id}-->
ご注文日時：<!--{$arrOrder.create_date}-->
お支払合計：￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
ご決済方法：<!--{$arrOrder.payment_method}-->
<!--{if $arrOrder.account_num != ""}--><!--{* 2013/9/3 tnamiki *}-->
お振込先　：<!--{$smarty.const.BANK_NAME}--><!--{$arrOrder.account_num}-->
<!--{/if}-->
<!--{if $arrOrder.payment_div == 1}-->
　※ ご入金を確認しだい、商品を発送させていただきます。
<!--{/if}-->
メッセージ：<!--{$Message_tmp}-->
◎お届け先
<!--{if $arrOrder.deliv_check != -99}-->
　<!--{$arrOrder.deliv_company_name}--> <!--{$arrOrder.deliv_pos_post_name}-->
　お名前　：<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->　様
　郵便番号：〒<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
　ご住所　：<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
　電話番号：<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->
<!--{else}-->
　Myページの購入履歴一覧よりご確認ください。
<!--{/if}-->

<!--{if $arrOther.title.value }-->
******************************************************************
　<!--{$arrOther.title.name}-->情報
******************************************************************
<!--{foreach key=key item=item from=$arrOther}-->
<!--{if $key != "title"}-->
<!--{if $item.name != ""}--><!--{$item.name}-->：<!--{/if}--><!--{$item.value}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->
******************************************************************
　ご注文商品明細
******************************************************************
<!--{section name=cnt loop=$arrOrderDetail}-->
商品名: <!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
商品コード: <!--{$arrOrderDetail[cnt].product_code}-->
数量：<!--{$arrOrderDetail[cnt].quantity}--> 
金額：￥ <!--{$arrOrderDetail[cnt].price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->

<!--{/section}-->
-----------------------------------------------------------
<!--{assign var=deliv_fee value=$arrOrder.deliv_fee|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule}-->
<!--{assign var=deliv_fee_tax value=$deliv_fee-$arrOrder.deliv_fee}-->
小　計 ￥ <!--{$arrOrder.subtotal|number_format|default:0}--> (うち消費税 ￥<!--{$arrOrder.tax-$deliv_fee_tax|number_format|default:0}-->）
値引き ￥ <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
送　料 ￥ <!--{$deliv_fee|number_format|default:0}--><!--{if $deliv_fee > 0}--> (うち消費税 ￥<!--{$deliv_fee_tax|number_format|default:0}-->)<!--{"\n"}--><!--{else}--><!--{"\n"}--><!--{/if}-->
手数料 ￥ <!--{$arrOrder.charge|number_format|default:0}-->
===============================================================
合　計 ￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
===============================================================
<!--{if $arrCustomer.discount_rate > 0}-->
割引率： <!--{$arrCustomer.discount_rate|default:0}--> ％
<!--{/if}-->

<!--{if count($arrAttInfo) > 0}-->
******************************************************************
　この商品をご注文されたお客様へのご案内
******************************************************************
<!--{section name=cnt loop=$arrAttInfo}-->
商品名：<!--{$arrAttInfo[cnt].name}-->
<!--{$arrAttInfo[cnt].sub_comment5}-->

<!--{/section}-->
<!--{/if}-->
<!--{if count($arrOthInfo) > 0}-->
******************************************************************
　お買い上げの商品の関連商品
******************************************************************
<!--{section name=cnt loop=$arrOthInfo}-->
商品名：<!--{$arrOthInfo[cnt].product_name}-->
<!--{$arrOthInfo[cnt].comment}-->

<!--{/section}-->
<!--{/if}-->

<!--{if $arrOrder.payment_div == 1}--><!--{* 2008/11/27 kishi *}-->
******************************************************************
　請求書について
******************************************************************
請求書の発行は「MYページ」の「購入履歴詳細画面」からご利用いただけます。
<!--{/if}-->
