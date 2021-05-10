baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'SuperAdmin-Announcements';
        package: 'SuperAdmin-Model';
        package: 'SuperAdmin-Magritte';
        package: 'SuperAdmin-Core'
          with: [ 
              spec
                requires:
                  #('SuperAdmin-Announcements' 'SuperAdmin-Model' 'SuperAdmin-Magritte') ];
        package: 'SuperAdmin-UI-Widgets';
        package: 'SuperAdmin-UI-Magritte'
          with: [ spec requires: #('SuperAdmin-Magritte') ];
        package: 'SuperAdmin-UI-Core'
          with: [ 
              spec
                requires:
                  #('SuperAdmin-Core' 'SuperAdmin-UI-Widgets' 'SuperAdmin-UI-Magritte') ].
      spec group: 'default' with: #('SuperAdmin-UI-Core') ]