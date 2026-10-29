import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles733
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 733 InitECandidate.Proofs.WordStages.source733.2.1 InitECandidate.Proofs.WordStages.source733.2.2 InitECandidate.Proofs.SmallStages.Oracles733.oracle733
