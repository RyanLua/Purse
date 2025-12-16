Purse only runs on the client and has zero performance impact on the server.

All performance benchmarks are measured on the client using the [Developer Console] in Roblox Studio testing.

  [Developer Console]: https://create.roblox.com/docs/en-us/studio/developer-console

!!! note

    Benchmarks may be optimistic due to the optimization level of the Luau compiler in Studio testing being lower than in live games.

## Memory

Typically around 0.1 to 0.2 MBs of memory is used.

## CPU

There is no meaningful CPU impact that the [MicroProfiler] or [Script Profiler]
within the [Developer Console] can measure. No per-frame calculations are made and code is entirely event-driven.

  [MicroProfiler]: https://create.roblox.com/docs/en-us/performance-optimization/microprofiler
  [Script Profiler]: https://create.roblox.com/docs/en-us/studio/optimization/scriptprofiler