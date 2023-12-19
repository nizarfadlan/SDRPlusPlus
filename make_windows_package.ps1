$build_dir=$args[0]
$root_dir=$args[1]

mkdir sista_windows_x64

# Copy root
cp -Recurse $root_dir/* sista_windows_x64/

# Copy core
cp $build_dir/Release/* sista_windows_x64/
cp 'C:/Program Files/PothosSDR/bin/volk.dll' sista_windows_x64/

# Copy source modules
cp $build_dir/source_modules/airspy_source/Release/airspy_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/airspy.dll' sista_windows_x64/

cp $build_dir/source_modules/airspyhf_source/Release/airspyhf_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/airspyhf.dll' sista_windows_x64/

cp $build_dir/source_modules/audio_source/Release/audio_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/bladerf_source/Release/bladerf_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/bladeRF.dll' sista_windows_x64/

cp $build_dir/source_modules/file_source/Release/file_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/hackrf_source/Release/hackrf_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/hackrf.dll' sista_windows_x64/

cp $build_dir/source_modules/hermes_source/Release/hermes_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/limesdr_source/Release/limesdr_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/LimeSuite.dll' sista_windows_x64/

cp $build_dir/source_modules/perseus_source/Release/perseus_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/perseus-sdr.dll' sista_windows_x64/

cp $build_dir/source_modules/plutosdr_source/Release/plutosdr_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/libiio.dll' sista_windows_x64/
cp 'C:/Program Files/PothosSDR/bin/libad9361.dll' sista_windows_x64/

cp $build_dir/source_modules/rfspace_source/Release/rfspace_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/rtl_sdr_source/Release/rtl_sdr_source.dll sista_windows_x64/modules/
cp 'C:/Program Files/PothosSDR/bin/rtlsdr.dll' sista_windows_x64/

cp $build_dir/source_modules/rtl_tcp_source/Release/rtl_tcp_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/sdrplay_source/Release/sdrplay_source.dll sista_windows_x64/modules/ -ErrorAction SilentlyContinue
cp 'C:/Program Files/SDRplay/API/x64/sdrplay_api.dll' sista_windows_x64/ -ErrorAction SilentlyContinue

cp $build_dir/source_modules/sista_server_source/Release/sista_server_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/soapy_source/Release/soapy_source.dll sista_windows_x64/modules/

cp $build_dir/source_modules/spyserver_source/Release/spyserver_source.dll sista_windows_x64/modules/

# cp $build_dir/source_modules/usrp_source/Release/usrp_source.dll sista_windows_x64/modules/


# Copy sink modules
cp $build_dir/sink_modules/audio_sink/Release/audio_sink.dll sista_windows_x64/modules/
cp "C:/Program Files (x86)/RtAudio/bin/rtaudio.dll" sista_windows_x64/

cp $build_dir/sink_modules/network_sink/Release/network_sink.dll sista_windows_x64/modules/


# Copy decoder modules
cp $build_dir/decoder_modules/m17_decoder/Release/m17_decoder.dll sista_windows_x64/modules/
cp "C:/Program Files/codec2/lib/libcodec2.dll" sista_windows_x64/

cp $build_dir/decoder_modules/meteor_demodulator/Release/meteor_demodulator.dll sista_windows_x64/modules/

cp $build_dir/decoder_modules/radio/Release/radio.dll sista_windows_x64/modules/


# Copy misc modules
cp $build_dir/misc_modules/discord_integration/Release/discord_integration.dll sista_windows_x64/modules/

cp $build_dir/misc_modules/frequency_manager/Release/frequency_manager.dll sista_windows_x64/modules/

cp $build_dir/misc_modules/recorder/Release/recorder.dll sista_windows_x64/modules/

cp $build_dir/misc_modules/rigctl_client/Release/rigctl_client.dll sista_windows_x64/modules/

cp $build_dir/misc_modules/rigctl_server/Release/rigctl_server.dll sista_windows_x64/modules/

cp $build_dir/misc_modules/scanner/Release/scanner.dll sista_windows_x64/modules/


# Copy supporting libs
cp 'C:/Program Files/PothosSDR/bin/libusb-1.0.dll' sista_windows_x64/
cp 'C:/Program Files/PothosSDR/bin/pthreadVC2.dll' sista_windows_x64/

Compress-Archive -Path sista_windows_x64/ -DestinationPath sista_windows_x64.zip

rm -Force -Recurse sista_windows_x64
