import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles445
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 445 InitECandidate.Proofs.WordStages.source445.2.1 InitECandidate.Proofs.WordStages.source445.2.2 InitECandidate.Proofs.SmallStages.Oracles445.oracle445
