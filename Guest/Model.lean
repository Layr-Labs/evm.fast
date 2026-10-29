import Flapjack.PanValueFfiSemantics
import Flapjack.RiscV.PanMemory
import Guest.Basic
import Guest.Bookkeeping
import Guest.Ast
import Guest.SoftwareAst
import Guest.ByteCodec

/-!
# The guest as a flapjack program: state, host, handlers, and the stepped run

Everything here is computable, so it doubles as an executable model
(`lake exe run-guest`).

* The challenge program is `Software.guestAst` (`Guest/SoftwareAst.lean`),
  generated from the software guest in `Guest/guest-software.pp.pnk`.
  This AST is authoritative for the challenge. Nothing here depends on the
  parser. Its header links to the original source and historical proof.
* The evaluator is flapjack's stateful-FFI stepped semantics
  (`Flapjack.evalPanValueFfiProgramStepped`), CakeML's picture: Pancake memory
  is the guest's own, and the host's input/output regions are reached only
  through shared-memory accesses (`!ldw`, `!st8`, ...), which are FFI calls to
  an oracle (`guestOracle`) over `HostMemory`.
* `guestInitialState` installs the reserved startup headers and zero-fills
  the remaining scratch and heap regions per
  `guest/src/config.h`; `guestHostMemory` lays the input out at `INPUT_ADDR`.
* `guestPrimitiveHandler` implements the 64-bit `__add_with_carry__`.
* The only external calls accepted by the challenge oracle are `@halt` and
  `@trap`; both return unchanged in this optional stepped model.
* `guestMemoryAccess` selects CakeML's aligned-cell model for sub-word
  accesses, with the RISC-V little-endian byte layout.

## Modelling caveats

* *`@halt` / `@trap` return.* On the machine both stop execution; here the
  handler returns and the program continues. After `@halt` that is only the
  final `return`. After `@trap` the guest itself makes it terminal:
  `trap_with` (`guest/src/lib/mem.pnk`) ends with `throw TrapErr code`, caught
  nowhere, so the run ends as `.raised`. That line is dead code on the machine,
  where `ffitrap` jumps to `cml_exit` and never returns. Without it the callers
  would keep going down their error paths, and that is not merely an
  over-approximation: it reaches unmapped byte accesses, which make the whole
  stepped run `none`.
* *Shared-memory payload address.* CakeML passes the exact (unaligned) address
  to the `SharedMem` oracle; flapjack passes `context.byteAlign address`. We
  set `byteAlign := id`, so the oracle sees the exact address and byte stores
  to the output region land where the machine puts them.
-/

namespace Guest

open Flapjack

/-! ### The program -/

/-- Entry point of the guest (`fun 1 main()` in `guest/src/main.pnk`). -/
def guestEntry : FunName := "main"

/-! ### The memory contract (`guest/src/config.h`) -/

/-- `INPUT_ADDR`: 8 bytes of zero metadata. -/
def inputAddr : Word := 1073741824
/-- `INPUT_LEN_ADDR`: 8-byte little-endian blob length. -/
def inputLenAddr : Word := 1073741832
/-- `INPUT_DATA_ADDR`: the blob, zero padded to a multiple of 8 bytes. -/
def inputDataAddr : Word := 1073741840
/-- Challenge input arena: 128 MiB at INPUT_ADDR, separate from RAM. -/
def inputArenaSize : Word := 1073741824
/-- Largest input blob the architecture can present: the input region minus the
16-byte framing (`[8B zero meta][8B LE len]`). -/
def maxInputBytes : Nat := 1073741824 - 16
/-- `OUTPUT_ADDR` (0xa0410000, ZisK >= 1.1.0-alpha): start of the public output region. -/
def outputAddr : Word := 2688614400
/-- End of the public output region, `OUTPUT_ADDR + 0x1000`. -/
def outputEnd : Word := 2688618496
/-- `SCRATCH_BASE`: the frame memory and scratch arena start at the guest
allocator's `HEAP_END`, inside the compiler's source-memory domain. -/
def scratchBase : Word := 2952790016
/-- Pancake memory start, `@base`; persistent allocation starts here. -/
def heapBase : Word := 2701131776
/-- Source-memory top for the compiler layout. The guest allocator itself caps
allocations at `HEAP_END = 0xb0000000` in the committed Pancake source. -/
def heapEnd : Word := 33806089704
/-- `WORD`: bytes per word. -/
def bytesInWord : Word := 8

/-! Bytes and words (little-endian, as the RISC-V target) are in `Guest.ByteCodec`. -/

/-! ### Pancake memory -/

/-- Initial Pancake memory: the reserved startup words contain the runtime
pointers and remaining ordinary cells are zero-filled. The host
regions are not here: the guest reaches them only through shared-memory
accesses, i.e. through the FFI oracle below. -/
def guestInitialMemory : Memory :=
  fun address =>
    if heapBase ≤ address ∧ address < heapEnd then
      some (.word (if heapBase ≤ address ∧ address < heapBase + 40 then
        startupHeaders[(address.toNat - heapBase.toNat) / 8]?.getD 0 else 0))
    else none

/-- Initial program state. Declarations are evaluated by the run itself, so
the declaration tables start empty. -/
def guestInitialState : PanValueProgramState Word :=
  { structs := []
    globals := fun _ => none
    functions := []
    returnShapes := []
    exceptions := []
    memory := guestInitialMemory
    baseAddress := heapBase
    topAddress := heapEnd
    bytesInWord := bytesInWord }

/-! ### The host: shared-memory regions behind the FFI oracle -/

/-- Host memory reachable through shared-memory accesses, as bytes. -/
abbrev HostMemory := Word → Option UInt8

/-- The input arena as the host lays it out: `[8B zero meta][8B LE len][blob]`,
zero padded to a multiple of 8. -/
def hostInputBytes (input : InputBlob) : List UInt8 :=
  let blob := input.map fun byte => UInt8.ofNat byte.toNat
  let padding := (8 - input.length % 8) % 8
  List.replicate 8 0 ++ leBytes (BitVec.ofNat 64 input.length) ++ blob ++
    List.replicate padding 0

/-- Initial host memory for a run on `input`: the input arena, and a
zero-filled output region (`[OUTPUT_ADDR, OUTPUT_ADDR + 65536)`). -/
def guestHostMemory (input : InputBlob) : HostMemory :=
  let bytes := hostInputBytes input
  fun address =>
    if inputAddr ≤ address ∧ address < inputAddr + BitVec.ofNat 64 bytes.length then
      bytes[(address - inputAddr).toNat]?
    else if outputAddr ≤ address ∧ address < outputEnd then some 0
    else none

/-- Access width of a shared-memory call from its configuration byte (`0`
means a full word). -/
def sharedWidth (configuration : List UInt8) : Nat :=
  match configuration with
  | [width] => if width.toNat = 0 then 8 else width.toNat
  | _ => 0

/-- The FFI oracle: `MappedRead` returns the addressed bytes (zero-extended to
the 8-byte payload), `MappedWrite` stores the value bytes that precede the
8-byte address in the payload. Both fail outside the host regions. The
`@halt` and `@trap` return the array unchanged (see the caveats above);
any other external call fails. -/
def guestOracle : FfiOracle HostMemory := fun name host configuration bytes =>
  match name with
  | .sharedMem .mappedRead =>
      let width := sharedWidth configuration
      let address := wordOfLeBytes bytes
      match (List.range width).mapM fun i => host (address + BitVec.ofNat 64 i) with
      | some values => .returned host (values ++ List.replicate (bytes.length - width) 0)
      | none => .final .failed
  | .sharedMem .mappedWrite =>
      let count := bytes.length - 8
      let values := bytes.take count
      let address := wordOfLeBytes (bytes.drop count)
      if (List.range count).all fun i => (host (address + BitVec.ofNat 64 i)).isSome then
        .returned (fun current =>
          let offset := (current - address).toNat
          if address ≤ current ∧ offset < count then values[offset]? else host current) bytes
      else .final .failed
  | .extCall name =>
      if name == "halt" || name == "trap" then .returned host bytes
      else .final .failed

/-- Initial FFI state for a run on `input`. -/
def guestFfiState (input : InputBlob) : FfiState HostMemory :=
  { oracle := guestOracle, state := guestHostMemory input, ioEvents := [] }

/-- Byte codec and shared-memory domain for the 64-bit little-endian target. -/
def guestFfiContext : PanValueFfiContext Word :=
  { sharedDomain := fun address =>
      decide ((inputAddr ≤ address ∧ address < inputAddr + inputArenaSize) ∨
        (outputAddr ≤ address ∧ address < outputEnd))
    -- Exact address in the payload, as CakeML does (see the module docstring).
    byteAlign := id
    bigEndian := false
    wordToBytes := fun word _ => leBytes word
    wordOfBytes := fun _ bytes => wordOfLeBytes bytes
    wordToByte := fun word => UInt8.ofNat (word.toNat % 256)
    byteToWord := fun byte => BitVec.ofNat 64 byte.toNat
    valueToNat := BitVec.toNat }

/-! ### Host handlers -/

/-- Semantics of Pancake primitive operations (`__add_with_carry__`) on 64-bit
words, as defined by flapjack. -/
def guestPrimitiveHandler : PanPrimitiveHandler Word :=
  fun primitive arguments =>
    match primitive, arguments with
    | .addCarry, [.word left, .word right, .word carry] =>
        let total := left.toNat + right.toNat + if carry == 0 then 0 else 1
        some (.rStruct [.word (BitVec.ofNat 64 total),
          .word (BitVec.ofNat 64 (if 2 ^ 64 ≤ total then 1 else 0))])
    | _, _ => none

/-- CakeML-style external calls without memory effects: `@halt` and `@trap`
leave everything unchanged (see the module docstring for the fact that on the
machine neither returns). Not reached by the guest's runs, whose semantics has a
memory access model, so every foreign call goes through `guestOracle`. -/
def guestHostFfi : PanValueStatefulFfiHandler Word HostMemory :=
  fun function _ _ _ _ locals ffi =>
    if function == "halt" || function == "trap" then some (locals, ffi) else none

/-- Sub-word accesses follow CakeML's aligned-cell model with the RISC-V byte
layout: `ld8`/`st8`/`ld32`/`st32` extract or patch bytes of the aligned word
cell (`Flapjack.RiscV.panRiscVMemoryModel`). -/
def guestMemoryAccess : PanValueMemoryAccess Word :=
  panValueMemoryAccessOfModel RiscV.panRiscVMemoryModel

/-! ### The run -/

/-- Step-counted run of `program` on `input` with recursion guard `fuel`. -/
def runProgramStepped (program : List (Decl Word)) (input : InputBlob) (fuel : Nat) :
    Option (PanValueFfiSteppedResult Word HostMemory) :=
  evalPanValueFfiProgramStepped guestFfiContext
    { source := guestInitialState, ffi := guestFfiState input }
    guestPrimitiveHandler guestHostFfi fuel program guestEntry []
    (memoryAccess := some guestMemoryAccess)

/-- Step-counted run of the software guest on `input`. -/
def runGuestStepped (input : InputBlob) (fuel : Nat) :
    Option (PanValueFfiSteppedResult Word HostMemory) :=
  runProgramStepped Software.guestAst input fuel

/-- The host memory a run ended with, whatever its control outcome. -/
def hostMemoryOf : PanValueFfiControlResult Word HostMemory → HostMemory
  | .normal _ _ _ ffi | .error _ _ _ ffi | .returned _ _ _ ffi _ | .raised _ _ _ ffi _ _
  | .broke _ _ _ ffi | .continued _ _ _ ffi | .finalFfi _ _ _ ffi _ => ffi.state

end Guest
