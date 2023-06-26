# Weather sample application

## Required packages

```bash
dotnet add package Serilog.Sinks.Console
dotnet add package Serilog.Formatting.Compact
```

## Log parsing

Host, Service, Status, and Timestamp are reserved and important attributes for Datadog's log management. Datadog has defaults mappings that can be ammeded if requried.  [Serilog](https://serilog.net/) has some attributes that dot not align with Datadog's defaults. Go [here](https://app.datadoghq.com/logs/pipelines/remapping) to ammend existing remaps. Because of Serilog naming requirements, you will also need to ammend some Datadog attributes like `dd_service` and `dd_trace_id`.

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
