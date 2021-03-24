<style>


a{
  text-decoration: none;
}

p, li, a{
  font-size: 14px;
}

/* GRID */


/* GENERAL STYLES */

.pagination{
  padding: 30px 0;
}

.pagination ul{
  margin: 0;
  padding: 0;
  list-style-type: none;
}

.pagination a{
  display: inline-block;
  padding: 10px 18px;
  color: #222;
}

/* ONE */

.p1 a{
  width: 40px;
  height: 40px;
  line-height: 40px;
  padding: 0;
  text-align: center;
}

.p1 a.is-active{
  background-color: #E78A6E;
  border-radius: 100%;
  color: #fff;
}




    </style>

        <div class="pagination p1">
     @if ($paginator->hasPages())
      <ul>

        @if ($paginator->onFirstPage())
        <a href="#"><li><</li></a>
        @else
        <a href="{{ $paginator->previousPageUrl() }}"><li><</li></a>
        @endif

        @foreach ($elements as $element)
            @if (is_string($element))
                   
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <a class="is-active" href="#"><li>{{ $page }}</li></a>
                    @else
                        <a href="{{ $url }}"><li>{{ $page }}</li></a>
                    @endif
                @endforeach
            @endif

        @endforeach




        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}"><li>></li></a>
            
        @else
            <a class="disabled"><li>></li></a>
        @endif
        
      
      </ul>
      @endif
    </div>