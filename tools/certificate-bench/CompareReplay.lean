import Comparator.Compare
import Lean

/-! Bounded-fragment harness: use the comparator's actual statement/definition
and axiom checks, followed by the same independent kernel replay. This does not
replace the isolated verifier or change any of its checks. -/

private def parseFile (path : String) : IO Export.ExportedEnv := do
  let handle ← IO.FS.Handle.mk path .read
  Export.parseStream (IO.FS.Stream.ofHandle handle)

def main (args : List String) : IO Unit := do
  let challengePath :: solutionPath :: names := args
    | throw <| IO.userError "expected challenge, solution, and theorem names"
  if names.isEmpty then throw <| IO.userError "expected at least one theorem"
  let targets := names.toArray.map String.toName
  let legal := #[``propext, ``Quot.sound, ``Classical.choice]
  let primitives := #[``Nat.add, ``Nat.sub, ``Nat.mul, ``Nat.pow, ``Nat.gcd,
    ``Nat.div, ``Nat.mod, ``Nat.beq, ``Nat.ble, ``Nat.land, ``Nat.lor, ``Nat.xor,
    ``Nat.shiftLeft, ``Nat.shiftRight, ``String.ofList, ``Char.ofNat, ``List,
    ``eagerReduce]
  let start ← IO.monoMsNow
  let challenge ← parseFile challengePath
  let solution ← parseFile solutionPath
  let parsed ← IO.monoMsNow
  IO.ofExcept <| Comparator.compareAt challenge solution (targets ++ legal) #[] primitives
  IO.ofExcept <| Comparator.checkAxioms solution targets #[] legal
  let compared ← IO.monoMsNow
  let env ← Lean.mkEmptyEnvironment
  let constants := solution.constMap.erase `Quot.mk |>.erase `Quot.lift |>.erase `Quot.ind
  discard <| env.replay constants
  let checked ← IO.monoMsNow
  IO.println s!"parse_ms={parsed-start}, compare_ms={compared-parsed}, replay_ms={checked-compared}, constants={constants.size}, comparator=accepted"
