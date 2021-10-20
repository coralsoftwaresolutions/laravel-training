<form name="fist" id="first" method="post" action="{{ URL::to('update') }}">
    @csrf
    <br>Id<input name="id" id="id" value="{{$id}}">
    <br>Name<input name="name" id="name" value="{{$name}}">
    <br>Age<input name="age" id="age" value="{{$age}}">
    <br>Sex<input name="sex" id="sex" value="{{$sex}}">
    <br>Country<input name="country" id="country" value="{{$country}}">
    <br>Phone<input name="phone" id="phone" value="{{$phone}}">
    <br>Pin<input name="pin" id="pin" value="{{$pin}}">
   <input type="submit" >
</form>
