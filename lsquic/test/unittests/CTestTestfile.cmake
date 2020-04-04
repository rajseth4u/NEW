# CMake generated Testfile for 
# Source directory: /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests
# Build directory: /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ack "test_ack")
add_test(ackgen_gquic_be "test_ackgen_gquic_be")
add_test(ackparse_gquic_be "test_ackparse_gquic_be")
add_test(alarmset "test_alarmset")
add_test(alt_svc_ver "test_alt_svc_ver")
add_test(arr "test_arr")
add_test(attq "test_attq")
add_test(blocked_gquic_be "test_blocked_gquic_be")
add_test(buf "test_buf")
add_test(bw_sampler "test_bw_sampler")
add_test(conn_close_gquic_be "test_conn_close_gquic_be")
add_test(crypto_gen "test_crypto_gen")
add_test(cubic "test_cubic")
add_test(dec "test_dec")
add_test(di_nocopy "test_di_nocopy")
add_test(elision "test_elision")
add_test(engine_ctor "test_engine_ctor")
add_test(export_key "test_export_key")
add_test(frame_chop "test_frame_chop")
add_test(frame_reader "test_frame_reader")
add_test(frame_writer "test_frame_writer")
add_test(goaway_gquic_be "test_goaway_gquic_be")
add_test(h3_framing "test_h3_framing")
add_test(hcsi_reader "test_hcsi_reader")
add_test(hkdf "test_hkdf")
add_test(lsquic_hash "test_lsquic_hash")
add_test(packet_out "test_packet_out")
add_test(packno_len "test_packno_len")
add_test(parse "test_parse")
add_test(parse_packet_in "test_parse_packet_in")
add_test(purga "test_purga")
add_test(qlog "test_qlog")
add_test(quic_be_floats "test_quic_be_floats")
add_test(rechist "test_rechist")
add_test(reg_pkt_headergen "test_reg_pkt_headergen")
add_test(rst_stream_gquic_be "test_rst_stream_gquic_be")
add_test(rtt "test_rtt")
add_test(send_headers "test_send_headers")
add_test(senhist "test_senhist")
add_test(set "test_set")
add_test(sfcw "test_sfcw")
add_test(shi "test_shi")
add_test(spi "test_spi")
add_test(stop_waiting_gquic_be "test_stop_waiting_gquic_be")
add_test(streamgen "test_streamgen")
add_test(streamparse "test_streamparse")
add_test(trapa "test_trapa")
add_test(varint "test_varint")
add_test(ver_nego "test_ver_nego")
add_test(wuf_gquic_be "test_wuf_gquic_be")
add_test(frame_rw "test_frame_rw")
add_test(stream "test_stream")
add_test(stream_hash "test_stream" "-h")
add_test(stream_A "test_stream" "-A")
add_test(stream_hash_A "test_stream" "-A" "-h")
add_test(malo_pooled "test_malo_pooled")
add_test(malo_nopool "test_malo_nopool")
add_test(minmax "test_minmax")
