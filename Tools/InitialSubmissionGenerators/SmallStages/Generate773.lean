import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles773
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 773 InitECandidate.Proofs.WordStages.source773.2.1 InitECandidate.Proofs.WordStages.source773.2.2 InitECandidate.Proofs.SmallStages.Oracles773.oracle773
