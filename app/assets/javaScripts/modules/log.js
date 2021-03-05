// // [#acdn-button]にクリックイベントを設定する
// $( '.__acBtn' ).click( function()
// {
// 	// [#acdn-target]に[slideToggle()]を実行する
// 	$( '.body' ).slideToggle() ;

// } ) ;

// // [.syncer-acdn]にクリックイベントを設定する
// $( '.syncer-acdn' ).click( function()
// {
// 	// [data-target]の属性値を代入する
// 	var target = $( this ).data( 'target' ) ;

// 	// [target]と同じ名前のIDを持つ要素に[slideToggle()]を実行する
// 	$( '#' + target ).slideToggle() ;
// } ) ;

// function demo01() {
//   $(".body").next().slideToggle(300);
// }

// $(".__acBtn").click(demo01);

// $(function(){
//   console.log(1)
// });


$(function(){
  $('.body').on('.__acBtn', function(){
    // e.preventDefault()
    // console.log(1)
  });
});