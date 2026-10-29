import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles412
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 412 InitECandidate.Proofs.WordStages.source412.2.1 InitECandidate.Proofs.WordStages.source412.2.2 InitECandidate.Proofs.SmallStages.Oracles412.oracle412
