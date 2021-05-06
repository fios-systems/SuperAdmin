baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'SuperAdmin-Announcements';
        package: 'SuperAdmin-Model';
        package: 'SuperAdmin-Core'
          with: [ spec requires: #('SuperAdmin-Announcements' 'SuperAdmin-Model') ];
        package: 'SuperAdmin-Widgets'
          with: [ spec requires: #('SuperAdmin-Core') ];
        package: 'SuperAdmin-Announcements' ]