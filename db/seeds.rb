# frozen_string_literal: true

obj = Track.create(
  title: 'Cradles',
  author: 'Sub Urban',
)
obj.track.attach(io: File.open('app/assets/tracks/Cradles.mp3'), filename: 'Cradles.mp3', content_type: 'audio/mp3')
obj.image_cover.attach(io: File.open('app/assets/images/cradles.jpeg'), filename: 'cradles.jpeg', content_type: 'image/jpeg')

obj = Track.create(
  title: 'Uptown funk',
  author: 'Bruno Mars',
  )
obj.track.attach(io: File.open('app/assets/tracks/test_audio.mp3'), filename: 'test_audio.mp3', content_type: 'audio/mp3')
obj.image_cover.attach(io: File.open('app/assets/images/bruno-mars.png'), filename: 'bruno-mars.png', content_type: 'image/png')

obj = Track.create(
  title: 'Keep Going',
  author: 'Sworn',
  )
obj.track.attach(io: File.open('app/assets/tracks/sworn-chill.mp3'), filename: 'sworn-chill.mp3', content_type: 'audio/mp3')
obj.image_cover.attach(io: File.open('app/assets/images/sworn2.jpeg'), filename: 'sworn2.jpeg', content_type: 'image/jpeg')


obj = Track.create(
  title: 'Transition to Reality',
  author: 'DVRST',
  )
obj.track.attach(io: File.open('app/assets/tracks/DVRST.mp3'), filename: 'DVRST.mp3', content_type: 'audio/mp3')
obj.image_cover.attach(io: File.open('app/assets/images/dvrst.jpeg'), filename: 'dvrst.jpeg', content_type: 'image/jpeg')

