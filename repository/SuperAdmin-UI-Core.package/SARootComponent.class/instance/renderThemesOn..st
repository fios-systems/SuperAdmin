rendering-themes
renderThemesOn: canvas
  1 to: 10 do: [ :index | 
    canvas anchor
      onClick: (canvas jQuery ajax callback: [ self themeIndex: index ]);
      class: 'themes__item';
      class: 'active' if: index = themeIndex;
      attributeAt: 'data-sa-value' put: index;
      with: [ canvas image url: SAFileLibrary / ('imgbg' , index asString , 'Jpg') asSymbol ] ]