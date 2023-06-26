# Weather sample application

## Required packages

```bash
dotnet add package Serilog.Sinks.Console
dotnet add package Serilog.Formatting.Compact
# dotnet add package log4net
```

## Log parsing

One easy option is to set your attributes as [default](https://app.datadoghq.com/logs/pipelines/remapping) remaps.

### Serilog

```json
{
    "@t": "2023-06-24T11:34:42.9711034Z",
    "@mt": "The winter is coming!",
    "@l": "Warning",
    "dd_service": "weather",
    "dd_version": "0.1a",
    "dd_env": "sandbox",
    "dd_trace_id": "7071608045251321459",
    "dd_span_id": "7112168250039906946"
}
```
