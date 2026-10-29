import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles478
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 478 InitECandidate.Proofs.WordStages.source478.2.1 InitECandidate.Proofs.WordStages.source478.2.2 InitECandidate.Proofs.SmallStages.Oracles478.oracle478
