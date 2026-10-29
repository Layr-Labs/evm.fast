import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles847
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 847 InitECandidate.Proofs.WordStages.source847.2.1 InitECandidate.Proofs.WordStages.source847.2.2 InitECandidate.Proofs.SmallStages.Oracles847.oracle847
