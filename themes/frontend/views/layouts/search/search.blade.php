<form class="seacrh" action="{{ url('/search/cari') }}">
          <input type="text" name="keyword" placeholder="Search.." name="search" value="{{ old('cari') }}" required>
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
