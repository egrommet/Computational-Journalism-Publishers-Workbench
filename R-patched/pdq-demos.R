for (d in c(
'allocs',
'allocs2',
'bookstore',
'cluster',
'diskoptim',
'ebiz',
'elephant',
'feedback',
'feedforward',
'florida',
'httpd',
'mm1',
'mm1n',
'mmm',
'moreq',
'morez',
'orca',
'passport2',
'spamcan1',
'spamcan2',
'testmsq',
'triple_msq'
)) {
  print(d)
  demo(d, character.only=TRUE)
}
