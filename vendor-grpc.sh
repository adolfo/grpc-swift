#!/bin/sh

public_headers=(
'include/grpc/support/alloc.h'
'include/grpc/support/atm.h'
'include/grpc/support/atm_gcc_atomic.h'
'include/grpc/support/atm_gcc_sync.h'
'include/grpc/support/atm_windows.h'
'include/grpc/support/avl.h'
'include/grpc/support/cmdline.h'
'include/grpc/support/cpu.h'
'include/grpc/support/histogram.h'
'include/grpc/support/host_port.h'
'include/grpc/support/log.h'
'include/grpc/support/log_windows.h'
'include/grpc/support/port_platform.h'
'include/grpc/support/string_util.h'
'include/grpc/support/subprocess.h'
'include/grpc/support/sync.h'
'include/grpc/support/sync_generic.h'
'include/grpc/support/sync_posix.h'
'include/grpc/support/sync_windows.h'
'include/grpc/support/thd.h'
'include/grpc/support/time.h'
'include/grpc/support/tls.h'
'include/grpc/support/tls_gcc.h'
'include/grpc/support/tls_msvc.h'
'include/grpc/support/tls_pthread.h'
'include/grpc/support/useful.h'
'include/grpc/impl/codegen/atm.h'
'include/grpc/impl/codegen/atm_gcc_atomic.h'
'include/grpc/impl/codegen/atm_gcc_sync.h'
'include/grpc/impl/codegen/atm_windows.h'
'include/grpc/impl/codegen/gpr_types.h'
'include/grpc/impl/codegen/port_platform.h'
'include/grpc/impl/codegen/slice.h'
'include/grpc/impl/codegen/sync.h'
'include/grpc/impl/codegen/sync_generic.h'
'include/grpc/impl/codegen/sync_posix.h'
'include/grpc/impl/codegen/sync_windows.h'
'include/grpc/byte_buffer.h'
'include/grpc/byte_buffer_reader.h'
'include/grpc/compression.h'
'include/grpc/grpc.h'
'include/grpc/grpc_posix.h'
'include/grpc/grpc_security_constants.h'
'include/grpc/slice.h'
'include/grpc/slice_buffer.h'
'include/grpc/status.h'
'include/grpc/impl/codegen/byte_buffer_reader.h'
'include/grpc/impl/codegen/compression_types.h'
'include/grpc/impl/codegen/connectivity_state.h'
'include/grpc/impl/codegen/grpc_types.h'
'include/grpc/impl/codegen/propagation_bits.h'
'include/grpc/impl/codegen/status.h'
'include/grpc/impl/codegen/atm.h'
'include/grpc/impl/codegen/atm_gcc_atomic.h'
'include/grpc/impl/codegen/atm_gcc_sync.h'
'include/grpc/impl/codegen/atm_windows.h'
'include/grpc/impl/codegen/gpr_types.h'
'include/grpc/impl/codegen/port_platform.h'
'include/grpc/impl/codegen/slice.h'
'include/grpc/impl/codegen/sync.h'
'include/grpc/impl/codegen/sync_generic.h'
'include/grpc/impl/codegen/sync_posix.h'
'include/grpc/impl/codegen/sync_windows.h'
'include/grpc/grpc_security.h'
'include/grpc/census.h')

source_files=(
'src/core/lib/profiling/timers.h'
'src/core/lib/support/backoff.h'
'src/core/lib/support/block_annotate.h'
'src/core/lib/support/env.h'
'src/core/lib/support/mpscq.h'
'src/core/lib/support/murmur_hash.h'
'src/core/lib/support/stack_lockfree.h'
'src/core/lib/support/string.h'
'src/core/lib/support/string_windows.h'
'src/core/lib/support/thd_internal.h'
'src/core/lib/support/time_precise.h'
'src/core/lib/support/tmpfile.h'
'src/core/lib/profiling/basic_timers.c'
'src/core/lib/profiling/stap_timers.c'
'src/core/lib/support/alloc.c'
'src/core/lib/support/avl.c'
'src/core/lib/support/backoff.c'
'src/core/lib/support/cmdline.c'
'src/core/lib/support/cpu_iphone.c'
'src/core/lib/support/cpu_linux.c'
'src/core/lib/support/cpu_posix.c'
'src/core/lib/support/cpu_windows.c'
'src/core/lib/support/env_linux.c'
'src/core/lib/support/env_posix.c'
'src/core/lib/support/env_windows.c'
'src/core/lib/support/histogram.c'
'src/core/lib/support/host_port.c'
'src/core/lib/support/log.c'
'src/core/lib/support/log_android.c'
'src/core/lib/support/log_linux.c'
'src/core/lib/support/log_posix.c'
'src/core/lib/support/log_windows.c'
'src/core/lib/support/mpscq.c'
'src/core/lib/support/murmur_hash.c'
'src/core/lib/support/stack_lockfree.c'
'src/core/lib/support/string.c'
'src/core/lib/support/string_posix.c'
'src/core/lib/support/string_util_windows.c'
'src/core/lib/support/string_windows.c'
'src/core/lib/support/subprocess_posix.c'
'src/core/lib/support/subprocess_windows.c'
'src/core/lib/support/sync.c'
'src/core/lib/support/sync_posix.c'
'src/core/lib/support/sync_windows.c'
'src/core/lib/support/thd.c'
'src/core/lib/support/thd_posix.c'
'src/core/lib/support/thd_windows.c'
'src/core/lib/support/time.c'
'src/core/lib/support/time_posix.c'
'src/core/lib/support/time_precise.c'
'src/core/lib/support/time_windows.c'
'src/core/lib/support/tls_pthread.c'
'src/core/lib/support/tmpfile_msys.c'
'src/core/lib/support/tmpfile_posix.c'
'src/core/lib/support/tmpfile_windows.c'
'src/core/lib/support/wrap_memcpy.c'
'src/core/lib/channel/channel_args.h'
'src/core/lib/channel/channel_stack.h'
'src/core/lib/channel/channel_stack_builder.h'
'src/core/lib/channel/compress_filter.h'
'src/core/lib/channel/connected_channel.h'
'src/core/lib/channel/context.h'
'src/core/lib/channel/deadline_filter.h'
'src/core/lib/channel/handshaker.h'
'src/core/lib/channel/http_client_filter.h'
'src/core/lib/channel/http_server_filter.h'
'src/core/lib/channel/message_size_filter.h'
'src/core/lib/compression/algorithm_metadata.h'
'src/core/lib/compression/message_compress.h'
'src/core/lib/debug/trace.h'
'src/core/lib/http/format_request.h'
'src/core/lib/http/httpcli.h'
'src/core/lib/http/parser.h'
'src/core/lib/iomgr/closure.h'
'src/core/lib/iomgr/combiner.h'
'src/core/lib/iomgr/endpoint.h'
'src/core/lib/iomgr/endpoint_pair.h'
'src/core/lib/iomgr/error.h'
'src/core/lib/iomgr/ev_epoll_linux.h'
'src/core/lib/iomgr/ev_poll_posix.h'
'src/core/lib/iomgr/ev_posix.h'
'src/core/lib/iomgr/exec_ctx.h'
'src/core/lib/iomgr/executor.h'
'src/core/lib/iomgr/iocp_windows.h'
'src/core/lib/iomgr/iomgr.h'
'src/core/lib/iomgr/iomgr_internal.h'
'src/core/lib/iomgr/iomgr_posix.h'
'src/core/lib/iomgr/load_file.h'
'src/core/lib/iomgr/network_status_tracker.h'
'src/core/lib/iomgr/polling_entity.h'
'src/core/lib/iomgr/pollset.h'
'src/core/lib/iomgr/pollset_set.h'
'src/core/lib/iomgr/pollset_set_windows.h'
'src/core/lib/iomgr/pollset_uv.h'
'src/core/lib/iomgr/pollset_windows.h'
'src/core/lib/iomgr/port.h'
'src/core/lib/iomgr/resolve_address.h'
'src/core/lib/iomgr/resource_quota.h'
'src/core/lib/iomgr/sockaddr.h'
'src/core/lib/iomgr/sockaddr_posix.h'
'src/core/lib/iomgr/sockaddr_utils.h'
'src/core/lib/iomgr/sockaddr_windows.h'
'src/core/lib/iomgr/socket_mutator.h'
'src/core/lib/iomgr/socket_utils.h'
'src/core/lib/iomgr/socket_utils_posix.h'
'src/core/lib/iomgr/socket_windows.h'
'src/core/lib/iomgr/tcp_client.h'
'src/core/lib/iomgr/tcp_client_posix.h'
'src/core/lib/iomgr/tcp_posix.h'
'src/core/lib/iomgr/tcp_server.h'
'src/core/lib/iomgr/tcp_uv.h'
'src/core/lib/iomgr/tcp_windows.h'
'src/core/lib/iomgr/time_averaged_stats.h'
'src/core/lib/iomgr/timer.h'
'src/core/lib/iomgr/timer_generic.h'
'src/core/lib/iomgr/timer_heap.h'
'src/core/lib/iomgr/timer_uv.h'
'src/core/lib/iomgr/udp_server.h'
'src/core/lib/iomgr/unix_sockets_posix.h'
'src/core/lib/iomgr/wakeup_fd_cv.h'
'src/core/lib/iomgr/wakeup_fd_pipe.h'
'src/core/lib/iomgr/wakeup_fd_posix.h'
'src/core/lib/iomgr/workqueue.h'
'src/core/lib/iomgr/workqueue_uv.h'
'src/core/lib/iomgr/workqueue_windows.h'
'src/core/lib/json/json.h'
'src/core/lib/json/json_common.h'
'src/core/lib/json/json_reader.h'
'src/core/lib/json/json_writer.h'
'src/core/lib/slice/percent_encoding.h'
'src/core/lib/slice/slice_string_helpers.h'
'src/core/lib/surface/api_trace.h'
'src/core/lib/surface/call.h'
'src/core/lib/surface/call_test_only.h'
'src/core/lib/surface/channel.h'
'src/core/lib/surface/channel_init.h'
'src/core/lib/surface/channel_stack_type.h'
'src/core/lib/surface/completion_queue.h'
'src/core/lib/surface/event_string.h'
'src/core/lib/surface/init.h'
'src/core/lib/surface/lame_client.h'
'src/core/lib/surface/server.h'
'src/core/lib/transport/byte_stream.h'
'src/core/lib/transport/connectivity_state.h'
'src/core/lib/transport/mdstr_hash_table.h'
'src/core/lib/transport/metadata.h'
'src/core/lib/transport/metadata_batch.h'
'src/core/lib/transport/pid_controller.h'
'src/core/lib/transport/service_config.h'
'src/core/lib/transport/static_metadata.h'
'src/core/lib/transport/timeout_encoding.h'
'src/core/lib/transport/transport.h'
'src/core/lib/transport/transport_impl.h'
'src/core/ext/transport/chttp2/transport/bin_decoder.h'
'src/core/ext/transport/chttp2/transport/bin_encoder.h'
'src/core/ext/transport/chttp2/transport/chttp2_transport.h'
'src/core/ext/transport/chttp2/transport/frame.h'
'src/core/ext/transport/chttp2/transport/frame_data.h'
'src/core/ext/transport/chttp2/transport/frame_goaway.h'
'src/core/ext/transport/chttp2/transport/frame_ping.h'
'src/core/ext/transport/chttp2/transport/frame_rst_stream.h'
'src/core/ext/transport/chttp2/transport/frame_settings.h'
'src/core/ext/transport/chttp2/transport/frame_window_update.h'
'src/core/ext/transport/chttp2/transport/hpack_encoder.h'
'src/core/ext/transport/chttp2/transport/hpack_parser.h'
'src/core/ext/transport/chttp2/transport/hpack_table.h'
'src/core/ext/transport/chttp2/transport/http2_errors.h'
'src/core/ext/transport/chttp2/transport/huffsyms.h'
'src/core/ext/transport/chttp2/transport/incoming_metadata.h'
'src/core/ext/transport/chttp2/transport/internal.h'
'src/core/ext/transport/chttp2/transport/status_conversion.h'
'src/core/ext/transport/chttp2/transport/stream_map.h'
'src/core/ext/transport/chttp2/transport/varint.h'
'src/core/ext/transport/chttp2/alpn/alpn.h'
'src/core/lib/security/context/security_context.h'
'src/core/lib/security/credentials/composite/composite_credentials.h'
'src/core/lib/security/credentials/credentials.h'
'src/core/lib/security/credentials/fake/fake_credentials.h'
'src/core/lib/security/credentials/google_default/google_default_credentials.h'
'src/core/lib/security/credentials/iam/iam_credentials.h'
'src/core/lib/security/credentials/jwt/json_token.h'
'src/core/lib/security/credentials/jwt/jwt_credentials.h'
'src/core/lib/security/credentials/jwt/jwt_verifier.h'
'src/core/lib/security/credentials/oauth2/oauth2_credentials.h'
'src/core/lib/security/credentials/plugin/plugin_credentials.h'
'src/core/lib/security/credentials/ssl/ssl_credentials.h'
'src/core/lib/security/transport/auth_filters.h'
'src/core/lib/security/transport/secure_endpoint.h'
'src/core/lib/security/transport/security_connector.h'
'src/core/lib/security/transport/security_handshaker.h'
'src/core/lib/security/transport/tsi_error.h'
'src/core/lib/security/util/b64.h'
'src/core/lib/security/util/json_util.h'
'src/core/lib/tsi/fake_transport_security.h'
'src/core/lib/tsi/ssl_transport_security.h'
'src/core/lib/tsi/ssl_types.h'
'src/core/lib/tsi/transport_security.h'
'src/core/lib/tsi/transport_security_interface.h'
'src/core/ext/transport/chttp2/server/chttp2_server.h'
'src/core/ext/client_channel/client_channel.h'
'src/core/ext/client_channel/client_channel_factory.h'
'src/core/ext/client_channel/connector.h'
'src/core/ext/client_channel/http_connect_handshaker.h'
'src/core/ext/client_channel/initial_connect_string.h'
'src/core/ext/client_channel/lb_policy.h'
'src/core/ext/client_channel/lb_policy_factory.h'
'src/core/ext/client_channel/lb_policy_registry.h'
'src/core/ext/client_channel/parse_address.h'
'src/core/ext/client_channel/resolver.h'
'src/core/ext/client_channel/resolver_factory.h'
'src/core/ext/client_channel/resolver_registry.h'
'src/core/ext/client_channel/subchannel.h'
'src/core/ext/client_channel/subchannel_index.h'
'src/core/ext/client_channel/uri_parser.h'
'src/core/ext/transport/chttp2/client/chttp2_connector.h'
'src/core/ext/lb_policy/grpclb/grpclb.h'
'src/core/ext/lb_policy/grpclb/load_balancer_api.h'
'src/core/ext/lb_policy/grpclb/proto/grpc/lb/v1/load_balancer.pb.h'
'third_party/nanopb/pb.h'
'third_party/nanopb/pb_common.h'
'third_party/nanopb/pb_decode.h'
'third_party/nanopb/pb_encode.h'
'src/core/ext/load_reporting/load_reporting.h'
'src/core/ext/load_reporting/load_reporting_filter.h'
'src/core/ext/census/aggregation.h'
'src/core/ext/census/base_resources.h'
'src/core/ext/census/census_interface.h'
'src/core/ext/census/census_rpc_stats.h'
'src/core/ext/census/gen/census.pb.h'
'src/core/ext/census/gen/trace_context.pb.h'
'src/core/ext/census/grpc_filter.h'
'src/core/ext/census/mlog.h'
'src/core/ext/census/resource.h'
'src/core/ext/census/rpc_metric_id.h'
'src/core/ext/census/trace_context.h'
'src/core/lib/surface/init.c'
'src/core/lib/channel/channel_args.c'
'src/core/lib/channel/channel_stack.c'
'src/core/lib/channel/channel_stack_builder.c'
'src/core/lib/channel/compress_filter.c'
'src/core/lib/channel/connected_channel.c'
'src/core/lib/channel/deadline_filter.c'
'src/core/lib/channel/handshaker.c'
'src/core/lib/channel/http_client_filter.c'
'src/core/lib/channel/http_server_filter.c'
'src/core/lib/channel/message_size_filter.c'
'src/core/lib/compression/compression.c'
'src/core/lib/compression/message_compress.c'
'src/core/lib/debug/trace.c'
'src/core/lib/http/format_request.c'
'src/core/lib/http/httpcli.c'
'src/core/lib/http/parser.c'
'src/core/lib/iomgr/closure.c'
'src/core/lib/iomgr/combiner.c'
'src/core/lib/iomgr/endpoint.c'
'src/core/lib/iomgr/endpoint_pair_posix.c'
'src/core/lib/iomgr/endpoint_pair_uv.c'
'src/core/lib/iomgr/endpoint_pair_windows.c'
'src/core/lib/iomgr/error.c'
'src/core/lib/iomgr/ev_epoll_linux.c'
'src/core/lib/iomgr/ev_poll_posix.c'
'src/core/lib/iomgr/ev_posix.c'
'src/core/lib/iomgr/exec_ctx.c'
'src/core/lib/iomgr/executor.c'
'src/core/lib/iomgr/iocp_windows.c'
'src/core/lib/iomgr/iomgr.c'
'src/core/lib/iomgr/iomgr_posix.c'
'src/core/lib/iomgr/iomgr_uv.c'
'src/core/lib/iomgr/iomgr_windows.c'
'src/core/lib/iomgr/load_file.c'
'src/core/lib/iomgr/network_status_tracker.c'
'src/core/lib/iomgr/polling_entity.c'
'src/core/lib/iomgr/pollset_set_uv.c'
'src/core/lib/iomgr/pollset_set_windows.c'
'src/core/lib/iomgr/pollset_uv.c'
'src/core/lib/iomgr/pollset_windows.c'
'src/core/lib/iomgr/resolve_address_posix.c'
'src/core/lib/iomgr/resolve_address_uv.c'
'src/core/lib/iomgr/resolve_address_windows.c'
'src/core/lib/iomgr/resource_quota.c'
'src/core/lib/iomgr/sockaddr_utils.c'
'src/core/lib/iomgr/socket_mutator.c'
'src/core/lib/iomgr/socket_utils_common_posix.c'
'src/core/lib/iomgr/socket_utils_linux.c'
'src/core/lib/iomgr/socket_utils_posix.c'
'src/core/lib/iomgr/socket_utils_uv.c'
'src/core/lib/iomgr/socket_utils_windows.c'
'src/core/lib/iomgr/socket_windows.c'
'src/core/lib/iomgr/tcp_client_posix.c'
'src/core/lib/iomgr/tcp_client_uv.c'
'src/core/lib/iomgr/tcp_client_windows.c'
'src/core/lib/iomgr/tcp_posix.c'
'src/core/lib/iomgr/tcp_server_posix.c'
'src/core/lib/iomgr/tcp_server_uv.c'
'src/core/lib/iomgr/tcp_server_windows.c'
'src/core/lib/iomgr/tcp_uv.c'
'src/core/lib/iomgr/tcp_windows.c'
'src/core/lib/iomgr/time_averaged_stats.c'
'src/core/lib/iomgr/timer_generic.c'
'src/core/lib/iomgr/timer_heap.c'
'src/core/lib/iomgr/timer_uv.c'
'src/core/lib/iomgr/udp_server.c'
'src/core/lib/iomgr/unix_sockets_posix.c'
'src/core/lib/iomgr/unix_sockets_posix_noop.c'
'src/core/lib/iomgr/wakeup_fd_cv.c'
'src/core/lib/iomgr/wakeup_fd_eventfd.c'
'src/core/lib/iomgr/wakeup_fd_nospecial.c'
'src/core/lib/iomgr/wakeup_fd_pipe.c'
'src/core/lib/iomgr/wakeup_fd_posix.c'
'src/core/lib/iomgr/workqueue_uv.c'
'src/core/lib/iomgr/workqueue_windows.c'
'src/core/lib/json/json.c'
'src/core/lib/json/json_reader.c'
'src/core/lib/json/json_string.c'
'src/core/lib/json/json_writer.c'
'src/core/lib/slice/percent_encoding.c'
'src/core/lib/slice/slice.c'
'src/core/lib/slice/slice_buffer.c'
'src/core/lib/slice/slice_string_helpers.c'
'src/core/lib/surface/alarm.c'
'src/core/lib/surface/api_trace.c'
'src/core/lib/surface/byte_buffer.c'
'src/core/lib/surface/byte_buffer_reader.c'
'src/core/lib/surface/call.c'
'src/core/lib/surface/call_details.c'
'src/core/lib/surface/call_log_batch.c'
'src/core/lib/surface/channel.c'
'src/core/lib/surface/channel_init.c'
'src/core/lib/surface/channel_ping.c'
'src/core/lib/surface/channel_stack_type.c'
'src/core/lib/surface/completion_queue.c'
'src/core/lib/surface/event_string.c'
'src/core/lib/surface/lame_client.c'
'src/core/lib/surface/metadata_array.c'
'src/core/lib/surface/server.c'
'src/core/lib/surface/validate_metadata.c'
'src/core/lib/surface/version.c'
'src/core/lib/transport/byte_stream.c'
'src/core/lib/transport/connectivity_state.c'
'src/core/lib/transport/mdstr_hash_table.c'
'src/core/lib/transport/metadata.c'
'src/core/lib/transport/metadata_batch.c'
'src/core/lib/transport/pid_controller.c'
'src/core/lib/transport/service_config.c'
'src/core/lib/transport/static_metadata.c'
'src/core/lib/transport/timeout_encoding.c'
'src/core/lib/transport/transport.c'
'src/core/lib/transport/transport_op_string.c'
'src/core/ext/transport/chttp2/server/secure/server_secure_chttp2.c'
'src/core/ext/transport/chttp2/transport/bin_decoder.c'
'src/core/ext/transport/chttp2/transport/bin_encoder.c'
'src/core/ext/transport/chttp2/transport/chttp2_plugin.c'
'src/core/ext/transport/chttp2/transport/chttp2_transport.c'
'src/core/ext/transport/chttp2/transport/frame_data.c'
'src/core/ext/transport/chttp2/transport/frame_goaway.c'
'src/core/ext/transport/chttp2/transport/frame_ping.c'
'src/core/ext/transport/chttp2/transport/frame_rst_stream.c'
'src/core/ext/transport/chttp2/transport/frame_settings.c'
'src/core/ext/transport/chttp2/transport/frame_window_update.c'
'src/core/ext/transport/chttp2/transport/hpack_encoder.c'
'src/core/ext/transport/chttp2/transport/hpack_parser.c'
'src/core/ext/transport/chttp2/transport/hpack_table.c'
'src/core/ext/transport/chttp2/transport/huffsyms.c'
'src/core/ext/transport/chttp2/transport/incoming_metadata.c'
'src/core/ext/transport/chttp2/transport/parsing.c'
'src/core/ext/transport/chttp2/transport/status_conversion.c'
'src/core/ext/transport/chttp2/transport/stream_lists.c'
'src/core/ext/transport/chttp2/transport/stream_map.c'
'src/core/ext/transport/chttp2/transport/varint.c'
'src/core/ext/transport/chttp2/transport/writing.c'
'src/core/ext/transport/chttp2/alpn/alpn.c'
'src/core/lib/http/httpcli_security_connector.c'
'src/core/lib/security/context/security_context.c'
'src/core/lib/security/credentials/composite/composite_credentials.c'
'src/core/lib/security/credentials/credentials.c'
'src/core/lib/security/credentials/credentials_metadata.c'
'src/core/lib/security/credentials/fake/fake_credentials.c'
'src/core/lib/security/credentials/google_default/credentials_generic.c'
'src/core/lib/security/credentials/google_default/google_default_credentials.c'
'src/core/lib/security/credentials/iam/iam_credentials.c'
'src/core/lib/security/credentials/jwt/json_token.c'
'src/core/lib/security/credentials/jwt/jwt_credentials.c'
'src/core/lib/security/credentials/jwt/jwt_verifier.c'
'src/core/lib/security/credentials/oauth2/oauth2_credentials.c'
'src/core/lib/security/credentials/plugin/plugin_credentials.c'
'src/core/lib/security/credentials/ssl/ssl_credentials.c'
'src/core/lib/security/transport/client_auth_filter.c'
'src/core/lib/security/transport/secure_endpoint.c'
'src/core/lib/security/transport/security_connector.c'
'src/core/lib/security/transport/security_handshaker.c'
'src/core/lib/security/transport/server_auth_filter.c'
'src/core/lib/security/transport/tsi_error.c'
'src/core/lib/security/util/b64.c'
'src/core/lib/security/util/json_util.c'
'src/core/lib/surface/init_secure.c'
'src/core/lib/tsi/fake_transport_security.c'
'src/core/lib/tsi/ssl_transport_security.c'
'src/core/lib/tsi/transport_security.c'
'src/core/ext/transport/chttp2/server/chttp2_server.c'
'src/core/ext/transport/chttp2/client/secure/secure_channel_create.c'
'src/core/ext/client_channel/channel_connectivity.c'
'src/core/ext/client_channel/client_channel.c'
'src/core/ext/client_channel/client_channel_factory.c'
'src/core/ext/client_channel/client_channel_plugin.c'
'src/core/ext/client_channel/connector.c'
'src/core/ext/client_channel/default_initial_connect_string.c'
'src/core/ext/client_channel/http_connect_handshaker.c'
'src/core/ext/client_channel/initial_connect_string.c'
'src/core/ext/client_channel/lb_policy.c'
'src/core/ext/client_channel/lb_policy_factory.c'
'src/core/ext/client_channel/lb_policy_registry.c'
'src/core/ext/client_channel/parse_address.c'
'src/core/ext/client_channel/resolver.c'
'src/core/ext/client_channel/resolver_factory.c'
'src/core/ext/client_channel/resolver_registry.c'
'src/core/ext/client_channel/subchannel.c'
'src/core/ext/client_channel/subchannel_index.c'
'src/core/ext/client_channel/uri_parser.c'
'src/core/ext/transport/chttp2/client/chttp2_connector.c'
'src/core/ext/transport/chttp2/server/insecure/server_chttp2.c'
'src/core/ext/transport/chttp2/server/insecure/server_chttp2_posix.c'
'src/core/ext/transport/chttp2/client/insecure/channel_create.c'
'src/core/ext/transport/chttp2/client/insecure/channel_create_posix.c'
'src/core/ext/lb_policy/grpclb/grpclb.c'
'src/core/ext/lb_policy/grpclb/load_balancer_api.c'
'src/core/ext/lb_policy/grpclb/proto/grpc/lb/v1/load_balancer.pb.c'
'third_party/nanopb/pb_common.c'
'third_party/nanopb/pb_decode.c'
'third_party/nanopb/pb_encode.c'
'src/core/ext/lb_policy/pick_first/pick_first.c'
'src/core/ext/lb_policy/round_robin/round_robin.c'
'src/core/ext/resolver/dns/native/dns_resolver.c'
'src/core/ext/resolver/sockaddr/sockaddr_resolver.c'
'src/core/ext/load_reporting/load_reporting.c'
'src/core/ext/load_reporting/load_reporting_filter.c'
'src/core/ext/census/base_resources.c'
'src/core/ext/census/context.c'
'src/core/ext/census/gen/census.pb.c'
'src/core/ext/census/gen/trace_context.pb.c'
'src/core/ext/census/grpc_context.c'
'src/core/ext/census/grpc_filter.c'
'src/core/ext/census/grpc_plugin.c'
'src/core/ext/census/initialize.c'
'src/core/ext/census/mlog.c'
'src/core/ext/census/operation.c'
'src/core/ext/census/placeholders.c'
'src/core/ext/census/resource.c'
'src/core/ext/census/trace_context.c'
'src/core/ext/census/tracing.c'
'src/core/plugin_registry/grpc_plugin_registry.c')

private_headers=(  
'src/core/lib/profiling/timers.h'
'src/core/lib/support/backoff.h'
'src/core/lib/support/block_annotate.h'
'src/core/lib/support/env.h'
'src/core/lib/support/mpscq.h'
'src/core/lib/support/murmur_hash.h'
'src/core/lib/support/stack_lockfree.h'
'src/core/lib/support/string.h'
'src/core/lib/support/string_windows.h'
'src/core/lib/support/thd_internal.h'
'src/core/lib/support/time_precise.h'
'src/core/lib/support/tmpfile.h'
'src/core/lib/channel/channel_args.h'
'src/core/lib/channel/channel_stack.h'
'src/core/lib/channel/channel_stack_builder.h'
'src/core/lib/channel/compress_filter.h'
'src/core/lib/channel/connected_channel.h'
'src/core/lib/channel/context.h'
'src/core/lib/channel/deadline_filter.h'
'src/core/lib/channel/handshaker.h'
'src/core/lib/channel/http_client_filter.h'
'src/core/lib/channel/http_server_filter.h'
'src/core/lib/channel/message_size_filter.h'
'src/core/lib/compression/algorithm_metadata.h'
'src/core/lib/compression/message_compress.h'
'src/core/lib/debug/trace.h'
'src/core/lib/http/format_request.h'
'src/core/lib/http/httpcli.h'
'src/core/lib/http/parser.h'
'src/core/lib/iomgr/closure.h'
'src/core/lib/iomgr/combiner.h'
'src/core/lib/iomgr/endpoint.h'
'src/core/lib/iomgr/endpoint_pair.h'
'src/core/lib/iomgr/error.h'
'src/core/lib/iomgr/ev_epoll_linux.h'
'src/core/lib/iomgr/ev_poll_posix.h'
'src/core/lib/iomgr/ev_posix.h'
'src/core/lib/iomgr/exec_ctx.h'
'src/core/lib/iomgr/executor.h'
'src/core/lib/iomgr/iocp_windows.h'
'src/core/lib/iomgr/iomgr.h'
'src/core/lib/iomgr/iomgr_internal.h'
'src/core/lib/iomgr/iomgr_posix.h'
'src/core/lib/iomgr/load_file.h'
'src/core/lib/iomgr/network_status_tracker.h'
'src/core/lib/iomgr/polling_entity.h'
'src/core/lib/iomgr/pollset.h'
'src/core/lib/iomgr/pollset_set.h'
'src/core/lib/iomgr/pollset_set_windows.h'
'src/core/lib/iomgr/pollset_uv.h'
'src/core/lib/iomgr/pollset_windows.h'
'src/core/lib/iomgr/port.h'
'src/core/lib/iomgr/resolve_address.h'
'src/core/lib/iomgr/resource_quota.h'
'src/core/lib/iomgr/sockaddr.h'
'src/core/lib/iomgr/sockaddr_posix.h'
'src/core/lib/iomgr/sockaddr_utils.h'
'src/core/lib/iomgr/sockaddr_windows.h'
'src/core/lib/iomgr/socket_mutator.h'
'src/core/lib/iomgr/socket_utils.h'
'src/core/lib/iomgr/socket_utils_posix.h'
'src/core/lib/iomgr/socket_windows.h'
'src/core/lib/iomgr/tcp_client.h'
'src/core/lib/iomgr/tcp_client_posix.h'
'src/core/lib/iomgr/tcp_posix.h'
'src/core/lib/iomgr/tcp_server.h'
'src/core/lib/iomgr/tcp_uv.h'
'src/core/lib/iomgr/tcp_windows.h'
'src/core/lib/iomgr/time_averaged_stats.h'
'src/core/lib/iomgr/timer.h'
'src/core/lib/iomgr/timer_generic.h'
'src/core/lib/iomgr/timer_heap.h'
'src/core/lib/iomgr/timer_uv.h'
'src/core/lib/iomgr/udp_server.h'
'src/core/lib/iomgr/unix_sockets_posix.h'
'src/core/lib/iomgr/wakeup_fd_cv.h'
'src/core/lib/iomgr/wakeup_fd_pipe.h'
'src/core/lib/iomgr/wakeup_fd_posix.h'
'src/core/lib/iomgr/workqueue.h'
'src/core/lib/iomgr/workqueue_uv.h'
'src/core/lib/iomgr/workqueue_windows.h'
'src/core/lib/json/json.h'
'src/core/lib/json/json_common.h'
'src/core/lib/json/json_reader.h'
'src/core/lib/json/json_writer.h'
'src/core/lib/slice/percent_encoding.h'
'src/core/lib/slice/slice_string_helpers.h'
'src/core/lib/surface/api_trace.h'
'src/core/lib/surface/call.h'
'src/core/lib/surface/call_test_only.h'
'src/core/lib/surface/channel.h'
'src/core/lib/surface/channel_init.h'
'src/core/lib/surface/channel_stack_type.h'
'src/core/lib/surface/completion_queue.h'
'src/core/lib/surface/event_string.h'
'src/core/lib/surface/init.h'
'src/core/lib/surface/lame_client.h'
'src/core/lib/surface/server.h'
'src/core/lib/transport/byte_stream.h'
'src/core/lib/transport/connectivity_state.h'
'src/core/lib/transport/mdstr_hash_table.h'
'src/core/lib/transport/metadata.h'
'src/core/lib/transport/metadata_batch.h'
'src/core/lib/transport/pid_controller.h'
'src/core/lib/transport/service_config.h'
'src/core/lib/transport/static_metadata.h'
'src/core/lib/transport/timeout_encoding.h'
'src/core/lib/transport/transport.h'
'src/core/lib/transport/transport_impl.h'
'src/core/ext/transport/chttp2/transport/bin_decoder.h'
'src/core/ext/transport/chttp2/transport/bin_encoder.h'
'src/core/ext/transport/chttp2/transport/chttp2_transport.h'
'src/core/ext/transport/chttp2/transport/frame.h'
'src/core/ext/transport/chttp2/transport/frame_data.h'
'src/core/ext/transport/chttp2/transport/frame_goaway.h'
'src/core/ext/transport/chttp2/transport/frame_ping.h'
'src/core/ext/transport/chttp2/transport/frame_rst_stream.h'
'src/core/ext/transport/chttp2/transport/frame_settings.h'
'src/core/ext/transport/chttp2/transport/frame_window_update.h'
'src/core/ext/transport/chttp2/transport/hpack_encoder.h'
'src/core/ext/transport/chttp2/transport/hpack_parser.h'
'src/core/ext/transport/chttp2/transport/hpack_table.h'
'src/core/ext/transport/chttp2/transport/http2_errors.h'
'src/core/ext/transport/chttp2/transport/huffsyms.h'
'src/core/ext/transport/chttp2/transport/incoming_metadata.h'
'src/core/ext/transport/chttp2/transport/internal.h'
'src/core/ext/transport/chttp2/transport/status_conversion.h'
'src/core/ext/transport/chttp2/transport/stream_map.h'
'src/core/ext/transport/chttp2/transport/varint.h'
'src/core/ext/transport/chttp2/alpn/alpn.h'
'src/core/lib/security/context/security_context.h'
'src/core/lib/security/credentials/composite/composite_credentials.h'
'src/core/lib/security/credentials/credentials.h'
'src/core/lib/security/credentials/fake/fake_credentials.h'
'src/core/lib/security/credentials/google_default/google_default_credentials.h'
'src/core/lib/security/credentials/iam/iam_credentials.h'
'src/core/lib/security/credentials/jwt/json_token.h'
'src/core/lib/security/credentials/jwt/jwt_credentials.h'
'src/core/lib/security/credentials/jwt/jwt_verifier.h'
'src/core/lib/security/credentials/oauth2/oauth2_credentials.h'
'src/core/lib/security/credentials/plugin/plugin_credentials.h'
'src/core/lib/security/credentials/ssl/ssl_credentials.h'
'src/core/lib/security/transport/auth_filters.h'
'src/core/lib/security/transport/secure_endpoint.h'
'src/core/lib/security/transport/security_connector.h'
'src/core/lib/security/transport/security_handshaker.h'
'src/core/lib/security/transport/tsi_error.h'
'src/core/lib/security/util/b64.h'
'src/core/lib/security/util/json_util.h'
'src/core/lib/tsi/fake_transport_security.h'
'src/core/lib/tsi/ssl_transport_security.h'
'src/core/lib/tsi/ssl_types.h'
'src/core/lib/tsi/transport_security.h'
'src/core/lib/tsi/transport_security_interface.h'
'src/core/ext/transport/chttp2/server/chttp2_server.h'
'src/core/ext/client_channel/client_channel.h'
'src/core/ext/client_channel/client_channel_factory.h'
'src/core/ext/client_channel/connector.h'
'src/core/ext/client_channel/http_connect_handshaker.h'
'src/core/ext/client_channel/initial_connect_string.h'
'src/core/ext/client_channel/lb_policy.h'
'src/core/ext/client_channel/lb_policy_factory.h'
'src/core/ext/client_channel/lb_policy_registry.h'
'src/core/ext/client_channel/parse_address.h'
'src/core/ext/client_channel/resolver.h'
'src/core/ext/client_channel/resolver_factory.h'
'src/core/ext/client_channel/resolver_registry.h'
'src/core/ext/client_channel/subchannel.h'
'src/core/ext/client_channel/subchannel_index.h'
'src/core/ext/client_channel/uri_parser.h'
'src/core/ext/transport/chttp2/client/chttp2_connector.h'
'src/core/ext/lb_policy/grpclb/grpclb.h'
'src/core/ext/lb_policy/grpclb/load_balancer_api.h'
'src/core/ext/lb_policy/grpclb/proto/grpc/lb/v1/load_balancer.pb.h'
'third_party/nanopb/pb.h'
'third_party/nanopb/pb_common.h'
'third_party/nanopb/pb_decode.h'
'third_party/nanopb/pb_encode.h'
'src/core/ext/load_reporting/load_reporting.h'
'src/core/ext/load_reporting/load_reporting_filter.h'
'src/core/ext/census/aggregation.h'
'src/core/ext/census/base_resources.h'
'src/core/ext/census/census_interface.h'
'src/core/ext/census/census_rpc_stats.h'
'src/core/ext/census/gen/census.pb.h'
'src/core/ext/census/gen/trace_context.pb.h'
'src/core/ext/census/grpc_filter.h'
'src/core/ext/census/mlog.h'
'src/core/ext/census/resource.h'
'src/core/ext/census/rpc_metric_id.h'
'src/core/ext/census/trace_context.h')

for src in "${public_headers[@]}"
do
	dest="Sources/gRPC_Core/$src"
	dest_dir=$(dirname $dest)
	mkdir -p $dest_dir
	cp third_party/grpc/$src $dest
done

for src in "${source_files[@]}"
do
	dest="Sources/gRPC_Core/$src"
	dest_dir=$(dirname $dest)
	mkdir -p $dest_dir
	cp third_party/grpc/$src $dest
done

for src in "${private_headers[@]}"
do
	dest="Sources/gRPC_Core/$src"
	dest_dir=$(dirname $dest)
	mkdir -p $dest_dir
	cp third_party/grpc/$src $dest
done


echo "ok"
exit
