# Node-RED Flow Versions

This repository snapshot keeps two versioned Node-RED flow files:

- `v1_flows260116/flows260116.json`
  - Based on the already-adjusted `xinfu/flows260116.json`
  - Adds rule filtering before local storage
  - Stores raw records and filtered records separately
  - Sends MQTT only for filtered `feed`, plus direct pass-through for `add` and `clear`

- `v2_完整流程/完整流程.json`
  - Based on `完整流程.json`
  - Applies the same rule-filtering idea inside the `V4.2_IIoT` feed subflow
  - Adds a raw SQL output path and keeps filtered SQL / MQTT separated
  - The source file was not modified; this copy also repairs malformed JSON string lines from the source so the exported file can be parsed again

SQLite statements are provided in `sqlite_tables.sql`.
