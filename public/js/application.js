$(document).ready(function() {
  $('form').on('submit', function(event) {
    event.preventDefault()
    $.ajax({
      url: '/shorten',
      method: 'post',
      data: $(this).serialize(),

      success: function(data) {
      if (data == "error"){
          $('.error').text(data)

        alert( "Please complete your link" );

      } else {
        res = JSON.parse(data)

        alert( "Your link has been shortened" );
        console.log(res.short_url)
        console.log(res.long_url)

$('tr:first-child').after('<tr><td>' + res.long_url + '</td><td><a href="' +res.short_url + '"target="_blank">' + res.short_url + '</a></td><td>0</td></tr>')
        }
      })
    }),
  $('table tr td a').on('click', function(event) {
    counter_ele = $(event.target).parent().next().next()
    num = parseInt(counter_ele.text()) + 1
    counter_ele.text(num)
  })
})
  