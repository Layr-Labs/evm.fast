import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles508
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 508 InitECandidate.Proofs.WordStages.source508.2.1 InitECandidate.Proofs.WordStages.source508.2.2 InitECandidate.Proofs.SmallStages.Oracles508.oracle508
