import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles594
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 594 InitECandidate.Proofs.WordStages.source594.2.1 InitECandidate.Proofs.WordStages.source594.2.2 InitECandidate.Proofs.SmallStages.Oracles594.oracle594
