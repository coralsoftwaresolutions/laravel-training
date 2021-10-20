<form name="fist" id="first" method="post" action="{{ URL::to('save') }}">
    @csrf


    <br>Name<input name="name" id="name">
    <br>Age<input name="age" id="age">
    <br>Sex<input name="sex" id="sex">
    <br>Country<input name="country" id="country">
    <br>Phone<input name="phone" id="phone">
    <br>Pin<input name="pin" id="pin">


    <input type="submit">
</form>
