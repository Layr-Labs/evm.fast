import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles814
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 814 InitECandidate.Proofs.WordStages.source814.2.1 InitECandidate.Proofs.WordStages.source814.2.2 InitECandidate.Proofs.SmallStages.Oracles814.oracle814
