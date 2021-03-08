baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'SuperAdmin-Announcements';
        package: 'SuperAdmin-Core'
          with: [ spec requires: 'SuperAdmin-Announcements' ];
        package: 'SuperAdmin-Widgets'
          with: [ spec requires: 'SuperAdmin-Core' ] ]