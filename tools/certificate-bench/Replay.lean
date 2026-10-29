import Lean
import Export.Parse
open Lean
 def main (args : List String) : IO Unit := do
  let path := args.head!
  let start ← IO.monoMsNow
  let handle ← IO.FS.Handle.mk path .read
  let solution ← Export.parseStream (IO.FS.Stream.ofHandle handle)
  let parsed ← IO.monoMsNow
  let env ← mkEmptyEnvironment
  let constants := solution.constMap.erase `Quot.mk |>.erase `Quot.lift |>.erase `Quot.ind
  discard <| env.replay constants
  let checked ← IO.monoMsNow
  IO.println s!"parse_ms={parsed-start}, replay_ms={checked-parsed}, constants={constants.size}, kernel=accepted"
