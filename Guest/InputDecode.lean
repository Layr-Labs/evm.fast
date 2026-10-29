import Guest.Basic

/-!
# The guest's own SSZ decoding of the stateless input, as a function of bytes

`Guest.InputDecode.declaredGasLimit` is the block gas limit the input
declares, `none` exactly when the input does not decode, so that the minimal
reader `Guest.GasLimit.declaredGasLimit` can be checked against the guest.
This module mirrors the guest's decoder for that purpose: `decode_payload`,
`decode_requests`, `decode_bytes_list` and `decode_stateless_input` of
`guest/src/ssz.pnk`, with their helpers `ssz_check_offsets`,
`ssz_split_var_list` and `ssz_fixed_list_count`, and the
field offsets and list limits of `guest/src/types.h`. Every `ssz_fail` site
becomes `none`, in the guest's own order, so `decodeStatelessInput` is `some`
on exactly the inputs on which `decode_stateless_input` returns instead of
raising `SszErr`.

This is *platform* code: it fixes the premise of the step-bound theorem, so it
follows the guest and is not to be adjusted to suit a proof.

## What "as a function of bytes" means

`input_blob` (`guest/src/lib/mem.pnk`) copies the blob from the host input
region into the heap as `⌈len/8⌉` words, so the decoder reads the blob
followed by zeros: the input region is zero padded, and `Guest.guestInitialMemory`
zero-fills the heap. Hence `byteAt`. Every read the decoder makes lies within
`[0, len + 8)` — offsets are checked against `len` before use, and the widest
read past one is the four bytes of an `LD_LE32` — so the zeros are all it ever
sees beyond the blob.

Decoding is a property of the bytes alone; it says nothing about whether the
guest has the *memory* to decode them. `alloc` traps once the heap is
exhausted, and an input can be decodable and still far too large to copy into
the heap.
-/

namespace Guest.InputDecode

/-! ### Bytes and little-endian scalars, as `ld8`, `LD_LE32` and `LD_LE64` -/

/-- Byte at blob offset `i` as the guest reads it back from the heap: the blob,
then zeros. -/
def byteAt (input : InputBlob) (i : Nat) : Nat := ((input[i]?).getD 0).toNat

/-- `LD_LE32`. -/
def le32 (input : InputBlob) (i : Nat) : Nat :=
  byteAt input i + byteAt input (i + 1) * 256 + byteAt input (i + 2) * 65536 +
    byteAt input (i + 3) * 16777216

/-- `LD_LE64`. -/
def le64 (input : InputBlob) (i : Nat) : Nat :=
  le32 input i + le32 input (i + 4) * 4294967296

/-! ### Field offsets and list limits (`guest/src/types.h`) -/

/-- `SI_FIXED`. -/ def siFixed : Nat := 16
/-- `NPR_FIXED`. -/ def nprFixed : Nat := 44
/-- `PL_FIXED`. -/ def plFixed : Nat := 540
/-- `REQ_FIXED`. -/ def reqFixed : Nat := 20

/-- `PLO_EXTRA_OFF`. -/ def ploExtraOff : Nat := 436
/-- `PLO_TXS_OFF`. -/ def ploTxsOff : Nat := 504
/-- `PLO_WD_OFF`. -/ def ploWdOff : Nat := 508
/-- `PLO_BAL_OFF`. -/ def ploBalOff : Nat := 528
/-- `PLO_NUMBER`. -/ def ploNumber : Nat := 404
/-- `PLO_GAS_LIMIT`. -/ def ploGasLimit : Nat := 412
/-- `PLO_GAS_USED`. -/ def ploGasUsed : Nat := 420
/-- `PLO_TIMESTAMP`. -/ def ploTimestamp : Nat := 428
/-- `PLO_BLOB_GAS_USED`. -/ def ploBlobGasUsed : Nat := 512
/-- `PLO_EXCESS_BLOB_GAS`. -/ def ploExcessBlobGas : Nat := 520
/-- `PLO_SLOT`. -/ def ploSlot : Nat := 532

/-- `WITHDRAWAL_SIZE`. -/ def withdrawalSize : Nat := 44
/-- `DEPOSIT_SIZE`. -/ def depositSize : Nat := 192
/-- `WDREQ_SIZE`. -/ def wdreqSize : Nat := 76
/-- `CONS_SIZE`. -/ def consSize : Nat := 116
/-- `BDEP_SIZE`. -/ def bdepSize : Nat := 184
/-- `BEXIT_SIZE`. -/ def bexitSize : Nat := 68

/-- `SSZ_UNBOUNDED`: the stand-in limit of a progressive list or byte list,
which has none. -/ def sszUnbounded : Nat := 9223372036854775807
/-- `MAX_EXTRA_DATA_BYTES`. -/ def maxExtraDataBytes : Nat := 32
/-- `MAX_WITNESS_HEADERS`. -/ def maxWitnessHeaders : Nat := 256
/-- `MAX_BYTES_PER_WITNESS_NODE`. -/ def maxBytesPerWitnessNode : Nat := 1024
/-- `MAX_BYTES_PER_CODE`. -/ def maxBytesPerCode : Nat := 65536
/-- `MAX_BYTES_PER_HEADER`. -/ def maxBytesPerHeader : Nat := 1024

/-! ### The decode helpers of `guest/src/ssz.pnk`

The guest computes on 64-bit words with unsigned comparisons (`<+`, `>+`).
Every subtraction below is of two offsets already known to be ordered — by the
preceding `checkOffsets`, which rejects out-of-range and decreasing offsets, or
by an explicit bound — so `Nat` subtraction agrees with the guest's wrapping
subtraction, and every value involved is below `2 ^ 32`, so `Nat` comparison
agrees with the guest's unsigned comparison.
-/

/-- Nondecreasing, as `ssz_check_offsets` requires of consecutive offsets. -/
def nondecreasing : List Nat → Bool
  | [] => true
  | [_] => true
  | first :: second :: rest => Nat.ble first second && nondecreasing (second :: rest)

/-- `ssz_check_offsets`: every variable offset in `[fixed, len]`, nondecreasing,
the first exactly `fixed`. -/
def checkOffsets (offsets : List Nat) (fixed len : Nat) : Option Unit :=
  match offsets with
  | [] => some ()
  | first :: _ =>
      if offsets.all (fun offset => Nat.ble fixed offset && Nat.ble offset len) &&
          nondecreasing offsets && first == fixed then
        some ()
      else none

/-- `ssz_split_var_list`: the slices of a serialized `List[variable, lim]` that
occupies `len` bytes at blob offset `p`, as `(offset, length)` pairs with the
offset relative to the blob. -/
def splitVarList (input : InputBlob) (p len lim : Nat) : Option (List (Nat × Nat)) := do
  if len = 0 then
    some []
  else
    guard (4 ≤ len)
    let first := le32 input p
    guard (first ≠ 0 ∧ first % 4 = 0 ∧ first ≤ len)
    let count := first / 4
    guard (count ≤ lim)
    let offsets := (List.range count).map fun index => le32 input (p + index * 4)
    guard (offsets.all fun offset => Nat.ble first offset && Nat.ble offset len)
    guard (nondecreasing offsets)
    some <| (List.range count).map fun index =>
      let offset := offsets[index]!
      (p + offset, (if index + 1 < count then offsets[index + 1]! else len) - offset)

/-- `ssz_fixed_list_count`: element count of a serialized `List[fixed size, lim]`
of `len` bytes. (`size` is a positive constant at every call site; the guest
would trap, not fail to decode, on a zero one.) -/
def fixedListCount (len size lim : Nat) : Option Nat := do
  guard (size ≠ 0)
  guard (len % size = 0)
  let count := len / size
  guard (count ≤ lim)
  some count

/-- `decode_bytes_list`: a `List[ByteList[maxBytes], lim]`. -/
def decodeBytesList (input : InputBlob) (p len lim maxBytes : Nat) :
    Option (List (Nat × Nat)) := do
  let slices ← splitVarList input p len lim
  guard (slices.all fun slice => Nat.ble slice.2 maxBytes)
  some slices

/-! ### The decoded records -/

/-- What `decode_payload` extracts from an `SszExecutionPayload`. -/
structure Payload where
  /-- Blob offset and length of the serialized payload (`PL_RAW`, `PL_RAW_LEN`). -/
  raw : Nat × Nat
  /-- `extra_data` (`PL_EXTRA`, `PL_EXTRA_N`). -/
  extraData : Nat × Nat
  /-- The transaction slices (`PL_TXS`, `PL_TXS_N`). -/
  transactions : List (Nat × Nat)
  /-- `PL_WD_N`. -/
  withdrawalCount : Nat
  /-- Length of the `block_access_list` byte list (`PL_BAL_N`). -/
  blockAccessListLength : Nat
  /-- `PL_NUMBER`. -/ number : Nat
  /-- `PL_GAS_LIMIT`. -/ gasLimit : Nat
  /-- `PL_GAS_USED`. -/ gasUsed : Nat
  /-- `PL_TIMESTAMP`. -/ timestamp : Nat
  /-- `PL_BLOB_GAS_USED`. -/ blobGasUsed : Nat
  /-- `PL_EXCESS_BLOB_GAS`. -/ excessBlobGas : Nat
  /-- `PL_SLOT`. -/ slot : Nat
  deriving Repr, DecidableEq

/-- The five request counts of `decode_requests`. -/
structure Requests where
  /-- `REQ_DEP_N`. -/ deposits : Nat
  /-- `REQ_WDR_N`. -/ withdrawals : Nat
  /-- `REQ_CONS_N`. -/ consolidations : Nat
  /-- `REQ_BDEP_N`. -/ builderDeposits : Nat
  /-- `REQ_BEXIT_N`. -/ builderExits : Nat
  deriving Repr, DecidableEq

/-- What `decode_stateless_input` builds (`SI_*` of `guest/src/types.h`),
keeping the sizes a bound on the run would be stated in terms of. -/
structure StatelessInput where
  /-- `SI_PL`. -/ payload : Payload
  /-- `SI_VH_N`. -/ versionedHashCount : Nat
  /-- `SI_REQ`. -/ requests : Requests
  /-- `SI_STATE`, `SI_STATE_N`: the witness trie nodes. -/
  witnessState : List (Nat × Nat)
  /-- `SI_CODES`, `SI_CODES_N`. -/ witnessCodes : List (Nat × Nat)
  /-- `SI_HEADERS`, `SI_HEADERS_N`. -/ witnessHeaders : List (Nat × Nat)
  /-- `SI_CHAIN_ID`. -/ chainId : Nat
  deriving Repr, DecidableEq

/-! ### The decoders -/

/-- `decode_payload`. -/
def decodePayload (input : InputBlob) (p len : Nat) : Option Payload := do
  guard (plFixed ≤ len)
  let extraOffset := le32 input (p + ploExtraOff)
  let txsOffset := le32 input (p + ploTxsOff)
  let withdrawalsOffset := le32 input (p + ploWdOff)
  let balOffset := le32 input (p + ploBalOff)
  let _ ← checkOffsets [extraOffset, txsOffset, withdrawalsOffset, balOffset] plFixed len
  guard (txsOffset - extraOffset ≤ maxExtraDataBytes)
  let transactions ← splitVarList input (p + txsOffset)
    (withdrawalsOffset - txsOffset) sszUnbounded
  let withdrawalCount ← fixedListCount (balOffset - withdrawalsOffset)
    withdrawalSize sszUnbounded
  some
    { raw := (p, len)
      extraData := (p + extraOffset, txsOffset - extraOffset)
      transactions
      withdrawalCount
      blockAccessListLength := len - balOffset
      number := le64 input (p + ploNumber)
      gasLimit := le64 input (p + ploGasLimit)
      gasUsed := le64 input (p + ploGasUsed)
      timestamp := le64 input (p + ploTimestamp)
      blobGasUsed := le64 input (p + ploBlobGasUsed)
      excessBlobGas := le64 input (p + ploExcessBlobGas)
      slot := le64 input (p + ploSlot) }

/-- `decode_requests`. -/
def decodeRequests (input : InputBlob) (p len : Nat) : Option Requests := do
  guard (reqFixed ≤ len)
  let offsets := (List.range 5).map fun index => le32 input (p + index * 4)
  let _ ← checkOffsets offsets reqFixed len
  let o0 := offsets[0]!
  let o1 := offsets[1]!
  let o2 := offsets[2]!
  let o3 := offsets[3]!
  let o4 := offsets[4]!
  let deposits ← fixedListCount (o1 - o0) depositSize sszUnbounded
  let withdrawals ← fixedListCount (o2 - o1) wdreqSize sszUnbounded
  let consolidations ← fixedListCount (o3 - o2) consSize sszUnbounded
  let builderDeposits ← fixedListCount (o4 - o3) bdepSize sszUnbounded
  let builderExits ← fixedListCount (len - o4) bexitSize sszUnbounded
  some { deposits, withdrawals, consolidations, builderDeposits, builderExits }

/-- `decode_stateless_input`: the schema id, then the SSZ body
(`StatelessInput = Container[new_payload_request, witness, chain_id: uint64]`).
`none` on exactly the inputs for which the guest raises `SszErr` instead of
returning. -/
def decodeStatelessInput (input : InputBlob) : Option StatelessInput := do
  guard (2 ≤ input.length)
  guard (byteAt input 0 = 21 ∧ byteAt input 1 = 1)
  -- `p = p + 2; len = len - 2` past the schema id.
  let p := 2
  let len := input.length - 2
  guard (siFixed ≤ len)
  let offsets := [le32 input p, le32 input (p + 4)]
  let _ ← checkOffsets offsets siFixed len
  let nprOffset := offsets[0]!
  let witnessOffset := offsets[1]!
  let chainId := le64 input (p + 8)
  -- NewPayloadRequest
  let np := p + nprOffset
  let nlen := witnessOffset - nprOffset
  guard (nprFixed ≤ nlen)
  let payloadOffset := le32 input np
  let versionedHashesOffset := le32 input (np + 4)
  let requestsOffset := le32 input (np + 40)
  let _ ← checkOffsets [payloadOffset, versionedHashesOffset, requestsOffset] nprFixed nlen
  let payload ← decodePayload input (np + payloadOffset)
    (versionedHashesOffset - payloadOffset)
  let versionedHashCount ← fixedListCount (requestsOffset - versionedHashesOffset) 32
    sszUnbounded
  let requests ← decodeRequests input (np + requestsOffset) (nlen - requestsOffset)
  -- ExecutionWitness
  let wp := p + witnessOffset
  let wlen := len - witnessOffset
  guard (12 ≤ wlen)
  let witnessOffsets := (List.range 3).map fun index => le32 input (wp + index * 4)
  let _ ← checkOffsets witnessOffsets 12 wlen
  let w0 := witnessOffsets[0]!
  let w1 := witnessOffsets[1]!
  let w2 := witnessOffsets[2]!
  let witnessState ← decodeBytesList input (wp + w0) (w1 - w0)
    sszUnbounded maxBytesPerWitnessNode
  let witnessCodes ← decodeBytesList input (wp + w1) (w2 - w1)
    sszUnbounded maxBytesPerCode
  let witnessHeaders ← decodeBytesList input (wp + w2) (wlen - w2)
    maxWitnessHeaders maxBytesPerHeader
  some
    { payload
      versionedHashCount
      requests
      witnessState
      witnessCodes
      witnessHeaders
      chainId }

/-- The declared block gas limit: the payload's `gas_limit` field, `none` when
the input does not decode. -/
def declaredGasLimit (input : InputBlob) : Option Nat :=
  (decodeStatelessInput input).map fun decoded => decoded.payload.gasLimit

end Guest.InputDecode
