import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles650
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 650 InitECandidate.Proofs.WordStages.source650.2.1 InitECandidate.Proofs.WordStages.source650.2.2 InitECandidate.Proofs.SmallStages.Oracles650.oracle650
