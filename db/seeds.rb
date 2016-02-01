g_v_1 = Genre.create(name: 'test_video_1', genre_type: 0)
g_v_2 = Genre.create(name: 'test_video_2', genre_type: 0)

g_a_1 = Genre.create(name: 'test_audio_1', genre_type: 1)
g_a_2 = Genre.create(name: 'test_audio_1', genre_type: 1)


Video.create(name: 'video 1', aspect_ratio: '3x4', resolution: '1366x768', genre: g_v_1)
Video.create(name: 'video 2', aspect_ratio: '3x4', resolution: '1366x768', genre: g_v_2)
Video.create(name: 'video 3', aspect_ratio: '3x4', resolution: '1366x768', genre: g_v_1)
Video.create(name: 'video 4', aspect_ratio: '3x4', resolution: '1366x768', genre: g_v_2)

Audio.create(name: 'audio 1', bit_depth: 16, genre: g_a_1)
Audio.create(name: 'audio 2', bit_depth: 16, genre: g_a_2)
Audio.create(name: 'audio 3', bit_depth: 32, genre: g_a_1)
Audio.create(name: 'audio 4', bit_depth: 32, genre: g_a_2)
