import Flapjack.Parser
import Guest.Model

/-! Run the source with a synthetic length header, without allocating a huge
host blob. Payload reads fail deliberately: an in-range length must reach the
copy, while an oversized length must trap before it reads or allocates payload.
Usage: lake env lean --run Tools/InputArenaCheck.lean -/

open Flapjack Guest

def arenaCheckHost (length : Nat) : HostMemory :=
  fun address =>
    if inputLenAddr ≤ address ∧ address < inputLenAddr + 8 then
      (leBytes (BitVec.ofNat 64 length))[(address - inputLenAddr).toNat]?
    else if inputDataAddr ≤ address ∧ address < inputAddr + inputArenaSize then
      none
    else guestHostMemory [] address

def checkLength (program : List (Decl Word)) (length : Nat) (oversized : Bool) : IO Unit := do
  let initial : PanValueFfiProgramState Word HostMemory :=
    { source := guestInitialState
      ffi := { oracle := guestOracle, state := arenaCheckHost length, ioEvents := [] } }
  let some (result, _) := evalPanValueFfiProgramStepped guestFfiContext initial
      guestPrimitiveHandler guestHostFfi 100000 program guestEntry []
      (memoryAccess := some guestMemoryAccess)
    | throw (IO.userError s!"source evaluation failed for length {length}")
  let passed := if oversized then
    match result with
    | .raised _ _ _ ffi exception _ =>
        exception == "TrapErr" && ffi.state (outputAddr + 33) == some 8
    | _ => false
  else
    match result with
    | .finalFfi _ _ _ _ event => event.name == .sharedMem .mappedRead
    | _ => false
  unless passed do
    throw (IO.userError s!"unexpected source outcome for length {length}")
  IO.println s!"PASS length {length}: {if oversized then "input-size trap 8" else "reached payload read"}"

def main (args : List String) : IO Unit := do
  let source ← IO.FS.readFile (args.headD "Guest/guest.pp.pnk")
  let source := (source.splitOn "fun 1 output_write(").head!
  let .ok program := Parser.parseTopDecs (BitVec.ofInt 64) source
    | throw (IO.userError "guest parse failed")
  -- Exercise the actual input_blob and allocator declarations directly; the
  -- unrelated crypto/EVM initialization in main does not affect this check.
  let program := program.filter fun declaration =>
    match declaration with
    | .function fn => ["mem_init", "alloc", "trap_with", "input_blob"].contains fn.name
    | .decl _ name _ => ["heap_ptr", "journal_n", "scratch_ptr", "frame_mem_ptr"].contains name
    | .exnDecl name _ => name == "TrapErr"
    | _ => false
  let program := program ++ [.function {
    name := "main", inline := false, exported := false, params := [], returnShape := .one
    body := .seq (.call (some (none, none)) "mem_init" [])
      (.decCall "input" (.comb [.one, .one]) "input_blob" [] (.return (.const 0))) }]
  for length in [1, maxInputBytes - 1, maxInputBytes] do
    checkLength program length false
  for length in [maxInputBytes + 1, 2 ^ 35, 2 ^ 64 - 8, 2 ^ 64 - 1] do
    checkLength program length true
