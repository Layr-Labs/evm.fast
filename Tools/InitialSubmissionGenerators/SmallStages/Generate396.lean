import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles396
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 396 InitECandidate.Proofs.WordStages.source396.2.1 InitECandidate.Proofs.WordStages.source396.2.2 InitECandidate.Proofs.SmallStages.Oracles396.oracle396
