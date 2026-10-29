import Lean
open Lean Elab Command
partial def visitProof (e : Expr) : StateM (Std.HashSet Expr) Unit := do
  if (← get).contains e then return
  modify (·.insert e)
  let _ ← e.foldlM (fun _ child => visitProof child) ()
  pure ()
elab "#stats " n:ident : command => do
  let some c := (← getEnv).find? n.getId | throwError "missing declaration"
  let some v := c.value? (allowOpaque := true) | throwError "no value"
  let (_, nodes) := (visitProof v).run {}
  logInfo m!"PROOF {n.getId}: nodes={nodes.size}"
