require("haproxy_opentracing")

function trace_request(tx)
  -- Invokes code from a C++ module to start the trace for a request.
  start_trace(tx);
end

function finish_request_trace(tx)
  -- Invokes code from a C++ module to finish the trace for a request.
  finish_trace(tx);
end

function init_tracer()
  -- This could be written in vender specific library to set up a tracer.
  -- A challenge is figuring out the best way to pass arguments to the tracer,
  -- perhaps environmental variables could be used?
  core.Alert('Initializing a tracer....');
end

core.register_action("trace_request", { "http-req" }, trace_request);
core.register_action("finish_request_trace", { "http-res" }, finish_request_trace);
core.register_init(init_tracer);
