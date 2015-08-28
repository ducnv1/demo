<!--{*
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *}-->

アイテックオンラインをご利用頂き、誠に有難うございます。

この度、コンビニ決済にてご注文登録頂きました下記ご注文につきまして、
お支払期日が迫ってまいりました。
コンビニ決済ご利用の場合、ご注文日から10日が過ぎますと、ご入金が出来なくなり、
自動的にキャンセルとなってしまいます。

また、商品のお届けは、ご入金確認後となります。
お手数お掛けいたしますが、下記支払期日までにご指定のコンビニに設置してあります、
情報端末よりご入金をお願いいたします。

******************************************************************
　配送情報とご請求金額
******************************************************************
ご注文番号：<!--{$arrOrder.order_id}-->
ご注文日時：<!--{$arrOrder.create_date}-->
お支払合計：￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
ご決済方法：<!--{$arrOrder.payment_method}-->
お届け時間：<!--{$arrOrder.deliv_time|default:"指定なし"}-->
メッセージ：<!--{$Message_tmp}-->
◎お届け先
　お名前　：<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->　様
　郵便番号：〒<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
　ご住所　：<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
　電話番号：<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->

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
小　計 ￥ <!--{$arrOrder.subtotal|number_format|default:0}--> (うち消費税 ￥<!--{$arrOrder.tax|number_format|default:0}-->）
値引き ￥ <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
送　料 ￥ <!--{$arrOrder.deliv_fee|number_format|default:0}-->
手数料 ￥ <!--{$arrOrder.charge|number_format|default:0}-->
===============================================================
合　計 ￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
===============================================================
<!--{if $arrOrder.coupon_rate > 0}-->
クーポン割引あり（<!--{$arrOrder.coupon_rate|default:0}-->％）
<!--{/if}-->

このメッセージはお客様へのお知らせ専用ですので、
このメッセージへの返信としてご質問をお送りいただいても回答できません。
ご了承ください。

ご質問やご不明な点がございましたら、下記ＵＲＬからお問い合わせ下さい。
https://www.itec.co.jp/contact/
