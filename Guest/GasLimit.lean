import Guest.InputDecode

/-!
# A minimal reader of the declared block gas limit

`Guest.GasLimit.declaredGasLimit` reads the block gas limit that a stateless
guest input declares, and does nothing else: it validates nothing, so it is
total and short enough to audit by eye. It is meant for the *statement* of the
challenge ("the declared block gas limit is at most 200M", `docs/CHALLENGE.md`).
For the inputs the guest accepts it agrees with `Guest.InputDecode.declaredGasLimit`
(`declaredGasLimit_of_decode`), whose definition goes through the full mirror of
the guest's decoder.

## Where the field sits

The input is the blob at `INPUT_DATA_ADDR`; the 8-byte length framing is not
part of it. Its layout (`guest/src/ssz.pnk`, `guest/src/types.h`):

* bytes `0, 1`: the schema id `21, 1`;
* from byte `2` on, the SSZ `StatelessInput` container, with fixed part
  `[new_payload_request offset : uint32][witness offset : uint32][chain_id : uint64]`;
  offsets are relative to byte `2`;
* the `NewPayloadRequest` starts at `np = 2 + le32 blob 2`; its fixed part begins
  with `[execution_payload offset : uint32]`, relative to `np`;
* the `ExecutionPayload` starts at `pl = np + le32 blob np`; `gas_limit` is the
  `uint64` at payload offset `412` (`PLO_GAS_LIMIT`), in the fixed part.

So the field is the little-endian `uint64` at blob position

    2 + le32 blob 2 + le32 blob (2 + le32 blob 2) + 412

and exactly two offsets are followed: the `new_payload_request` offset (bytes
`2..5`) and the `execution_payload` offset (the first four bytes of the request).
Neither is checked against anything: not against the blob length, not for
ordering, not against the fixed-part sizes. The witness offset, `chain_id`, all
other fields, the schema id and all list limits are ignored.

## Short input

Like the guest, a read beyond the end of the blob sees zeros (the blob is copied
into a zero-filled heap, see `Guest.InputDecode`). So a blob too short to contain
a four-byte offset or the eight-byte field yields zeros for the missing bytes,
and an offset that points past the end yields `0` for the limit. No other
decoding failure exists.

## Relation to the guest's decoder

`Guest.InputDecode.declaredGasLimit input` is `none` unless the guest's decoder
accepts the input and then `some` of the payload's `gas_limit`. Whenever the
decoder accepts, `declaredGasLimit input` is that value:
`declaredGasLimit_of_decode`. On inputs the guest rejects, `declaredGasLimit`
still returns whatever the bytes at that position say.
-/

namespace Guest.GasLimit

/-- Byte `i` of the blob, zero beyond its end. -/
def byte (input : InputBlob) (i : Nat) : Nat := ((input[i]?).getD 0).toNat

/-- Little-endian `uint32` at blob position `i` (zeros beyond the end). -/
def le32 (input : InputBlob) (i : Nat) : Nat :=
  byte input i + byte input (i + 1) * 256 + byte input (i + 2) * 65536 +
    byte input (i + 3) * 16777216

/-- Little-endian `uint64` at blob position `i` (zeros beyond the end). -/
def le64 (input : InputBlob) (i : Nat) : Nat :=
  le32 input i + le32 input (i + 4) * 4294967296

/-- The block gas limit declared by the input: the `uint64` at
`2 + le32 blob 2 + le32 blob (2 + le32 blob 2) + 412`. See the module docstring. -/
def declaredGasLimit (input : InputBlob) : Nat :=
  let requestStart := 2 + le32 input 2
  let payloadStart := requestStart + le32 input requestStart
  le64 input (payloadStart + 412)

/-- The reader's `le64` is the decoder's. -/
theorem le64_eq (input : InputBlob) (i : Nat) :
    le64 input i = InputDecode.le64 input i := rfl

/-- The field `decodePayload` extracts is the `uint64` at payload offset `412`. -/
theorem decodePayload_gasLimit {input : InputBlob} {p len : Nat} {payload : InputDecode.Payload}
    (h : InputDecode.decodePayload input p len = some payload) :
    payload.gasLimit = le64 input (p + 412) := by
  unfold InputDecode.decodePayload at h
  simp only [Option.bind_eq_bind, Option.bind_eq_some_iff] at h
  obtain ⟨_, _, _, _, _, _, _, _, _, _, _, _, rfl⟩ := h
  rfl

/-- Whenever the guest's decoder accepts the input, the minimal reader returns
the payload's `gas_limit` that the decoder extracts. -/
theorem declaredGasLimit_of_decode {input : InputBlob} {decoded : InputDecode.StatelessInput}
    (h : InputDecode.decodeStatelessInput input = some decoded) :
    decoded.payload.gasLimit = declaredGasLimit input := by
  unfold InputDecode.decodeStatelessInput at h
  simp only [Option.bind_eq_bind, Option.bind_eq_some_iff] at h
  obtain ⟨_, -, _, -, _, -, _, -, _, -, _, -, payload, hpayload, _, -, _, -, _, -, _, -, _, -,
    _, -, _, -, hdecoded⟩ := h
  cases Option.some.inj hdecoded
  rw [decodePayload_gasLimit hpayload]
  rfl

/-- `InputDecode.declaredGasLimit` is
`some` of the minimal reader's value whenever the decoder accepts. -/
theorem decoderGasLimit_eq_some {input : InputBlob} {decoded : InputDecode.StatelessInput}
    (h : InputDecode.decodeStatelessInput input = some decoded) :
    InputDecode.declaredGasLimit input = some (declaredGasLimit input) := by
  unfold InputDecode.declaredGasLimit
  rw [h]
  exact congrArg some (declaredGasLimit_of_decode h)

end Guest.GasLimit
