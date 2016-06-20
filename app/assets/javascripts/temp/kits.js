$(document).ready(function(){
  'use strict';
  // opens the first kit
  $('#oasis-steam-generator-package').collapse('show');

  // Product Objects
  function Category(name, products){
    this.name = name;
    this.products = products;
    this.findProductByNameAndColor = function(query, color){
      for (var i = 0; i < this.products.length; i++){
        if(this.products[i].name === query && this.products[i].color === color){
          return this.products[i];
        } else if (typeof color === 'undefined' && this.products[i].name === query){
          return this.products[i];
        }
      }
    };
    this.findProductByTarget = function(target){
      for (var i = 0; i < this.products.length; i++){
        if(this.products[i].target === target){
          return '\n' + '- ' + this.products[i].name + ' in ' + this.products[i].color;
        }
      }
    };
    this.hideProducts = function(keeper){
      for (var i = 0; i < this.products.length; i++){
        if(typeof keeper !== 'undefined'){
          $('.' + keeper.category + '-container').find('[class^=span]:not(' + keeper.target + ')').hide();
          if(this.products[i].name === keeper.name && products[i].color === keeper.color){
            this.products[i].reveal();
          }
        }
      }
    };
  }

  function Product(target, name, color, category){
    this.name = name;
    this.target = target;
    this.color = color;
    this.category = category;
    this.conceal = function(){
      $('.' + this.category + '-container').find(this.target).hide();
      this.visible = false;
    };
    this.reveal = function(){
      $('.' + this.category + '-container').find(this.target).show();
    };
  }

  var $generators = new Category(
    'generators',
    [
      new Product('.45kw-quick-start-unit', '4.5 KW QuickStart Unit',   'Polished Chrome', 'generators'),
      new Product('.6kw-quick-start-unit',  '6 KW QuickStart Unit',     'Polished Chrome', 'generators'),
      new Product('.75kw-quick-start-unit', '7.5 KW QuickStart Unit',   'Polished Chrome', 'generators'),
      new Product('.9kw-quick-start-unit',  '9 KW QuickStart Unit',     'Polished Chrome', 'generators'),
      new Product('.10kw-quick-start-unit', '10.5 KW QuickStart Unit',  'Polished Chrome', 'generators'),
      new Product('.12kw-quick-start-unit', '12 KW QuickStart Unit',    'Polished Chrome', 'generators')
    ]
  );

  var $controlPanels = new Category(
    'controlPanels',
    [
      new Product('.single-control-panel',        'Single Control Panel', 'Polished Chrome',    'controlPanels'),
      new Product('.single-control-panel-bronze', 'Single Control Panel', 'Oil Rubbed Bronze',  'controlPanels'),
      new Product('.single-control-panel-brass',  'Single Control Panel', 'Brass',              'controlPanels'),
      new Product('.digital-touch-pad',           'Digital TouchPad',     'Polished Chrome',    'controlPanels'),
      new Product('.digital-touch-pad-bronze',    'Digital TouchPad',     'Oil Rubbed Bronze',  'controlPanels'),
      new Product('.dual-round-panels',           'Dual Control Panels',  'Polished Chrome',    'controlPanels'),
      new Product('.dual-round-panels-brass',     'Dual Control Panels',  'Brass',              'controlPanels'),
      new Product('.dual-round-panels-bronze',    'Dual Control Panels',  'Oil Rubbed Bronze',  'controlPanels')
    ]
  );

  var $steamHeads = new Category(
    'steamHeads',
    [
      new Product('.chrome-steam-head', 'Single Steam Head', 'Polished Chrome',   'steamHeads'),
      new Product('.bronze-steam-head', 'Single Steam Head', 'Oil Rubbed Bronze', 'steamHeads'),
      new Product('.brass-steam-head',  'Single Steam Head', 'Brass',             'steamHeads')
    ]
  );

  var $chromatherapy = new Category(
    'chromatherapy',
    [
      new Product('.chromatehrapy-light',  'LED White Light', 'Chrome', 'chromatherapy')
    ]
  );

  var $purifiers = new Category(
    'purifiers',
    [
      new Product('.purifier',  'Inline Purifier', 'White', 'purifiers'),

    ]
  );

  var $allProducts = new Category(
    'allProducts',
    $generators.products.concat(
      $steamHeads.products.concat(
        $controlPanels.products.concat(
          $chromatherapy.products.concat(
            $purifiers.products
          )
        )
      )
    )
  );

  // Hiding elements per bundles selected
  resetMenus();
  $('.chromatherapy-container').hide();
  $('.purifiers-container').hide();
  $('a.accordion-toggle').click(function(){
    resetMenus();
    switch ($(this).attr('href')){
      case '#oasis-steam-generator-package':
        $('.chromatherapy-container').hide();
        $('.purifiers-container').hide();
        break;
      case '#indulgence-steam-generator-package':
        $('.chromatherapy-container').show();
        $('.purifiers-container').hide();
        $('.wpcf7-form-control.wpcf7-textarea').append('\n' + '- ' + 'LED White Light in Chrome');
        break;
      case '#royal-steam-generator-package':
        $('.chromatherapy-container').show();
        $('.purifiers-container').show();
        $('.wpcf7-form-control.wpcf7-textarea').append('\n' + '- ' + 'LED White Light in Chrome' + '\n' + '- ' + 'Inline Purifier in White');
        break;
      default:
        $('.chromatherapy-container').hide();
        $('.purifiers-container').hide();
    }
  });

  // Menus Controller
  function resetMenus(){
    $('.menu-container').each(function(){
      //#default
      var menuContainer = $(this);
      var selection = $(this).find('ul li:first-child').text();
      var color = $(this).find('form input:checked').val();
      var target = $(this).find('a.btn');
      $(target).html(selection + ' <span class="caret"></span>');
      //#dropdown
      $(this).on('click', 'ul li', function(){
        var selection = $(this).text();
        var color = $(menuContainer).find('form input:checked').val();
        $(target).html(selection + ' <span class="caret"></span>');
        parseMenusSelections(selection, color);
      });

      //#color
      $(this).find('form input').change(function(){
        var color = $(this).val();
        var selection = $(target).text().trim();
        parseMenusSelections(selection, color);
      });
      parseMenusSelections(selection, color);
    });
  }

  function parseMenusSelections(selection, color){
    var productToShow = $allProducts.findProductByNameAndColor(selection, color);
    $allProducts.hideProducts(productToShow);
    appendToForm();
  }

  function appendToForm(){
    function stripPrecedingClass(string){
      if(typeof string !== 'undefined'){
        return ( "." + string.attr('class').split(" ").pop());
      }
    }
    var generator = stripPrecedingClass($('.generators-container div:visible'));
    var steamHead = stripPrecedingClass($('.steamHeads-container div:visible'));
    var controlPanel = stripPrecedingClass($('.controlPanels-container div:visible'));
    var selections = [
      $allProducts.findProductByTarget(generator),
      $allProducts.findProductByTarget(steamHead),
      $allProducts.findProductByTarget(controlPanel),
    ];
    $('.wpcf7-form-control.wpcf7-textarea').text('Hi, I am inquiring about: ' + '\n' + selections);
  }
});
