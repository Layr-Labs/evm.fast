import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles614
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 614 InitECandidate.Proofs.WordStages.source614.2.1 InitECandidate.Proofs.WordStages.source614.2.2 InitECandidate.Proofs.SmallStages.Oracles614.oracle614
