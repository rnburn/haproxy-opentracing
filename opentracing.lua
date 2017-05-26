require("haproxy_opentracing")

function trace_request(tx)
  core.Alert('ArfArfYip!');
end

function finish_trace(tx)
  core.Alert('NufNufWoof!');
end

function init_tracer()
  core.Alert('Hrrrr!');
end

core.register_action("trace_request", { "http-req" }, trace_request);
core.register_action("finish_trace", { "http-res" }, finish_trace);
core.register_init(init_tracer);
