initialisation
initializeNotifications
  notifications
    add:
        (SANotification new
            iconName: 'zwicon-info-circle';
            heading: 'Something you should know';
            text:
                'We have some information that you should know about. It''s not super interesting, but it''s a thing none the less.';
            yourself);
    add:
        (SANotification new
            iconName: 'zwicon-diamond';
            heading: 'You have completed an achievement';
            text: 'Congratulations! You have completed 10 jobs this week.';
            yourself)