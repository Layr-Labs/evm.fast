import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles435
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 435 InitECandidate.Proofs.WordStages.source435.2.1 InitECandidate.Proofs.WordStages.source435.2.2 InitECandidate.Proofs.SmallStages.Oracles435.oracle435
