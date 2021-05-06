description
describeOn: config
  super describeOn: config.
  (config integer: #'userLockSeconds')
    beAdvanced;
    group: #'superAdmin';
    label: 'User Lock Seconds';
    comment:
        'Number of seconds until the session lock kicks in and the user lock screen is displayed.';
    default: 300