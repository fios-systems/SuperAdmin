description
describeOn: config
  super describeOn: config.
  (config integer: #'userLockSeconds')
    beAdvanced;
    group: #'superAdmin';
    label: 'User Lock Seconds';
    comment:
        'Number of seconds until the session lock kicks in and the user lock screen is displayed.';
    default: 300.
  (config string: #'reCaptchaSiteKey')
    beAdvanced;
    group: #'reCaptcha';
    label: 'Site Key';
    comment: 'reCaptcha Site Key';
    default: nil.
  (config string: #'reCaptchaSecretKey')
    beAdvanced;
    group: #'reCaptcha';
    label: 'Secret Key';
    comment: 'reCaptcha Secret Key';
    default: nil