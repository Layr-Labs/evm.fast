import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles825
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 825 InitECandidate.Proofs.WordStages.source825.2.1 InitECandidate.Proofs.WordStages.source825.2.2 InitECandidate.Proofs.SmallStages.Oracles825.oracle825
