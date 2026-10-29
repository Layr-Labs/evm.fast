import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles271
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 271 InitECandidate.Proofs.WordStages.source271.2.1 InitECandidate.Proofs.WordStages.source271.2.2 InitECandidate.Proofs.SmallStages.Oracles271.oracle271
