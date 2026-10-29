import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles643
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 643 InitECandidate.Proofs.WordStages.source643.2.1 InitECandidate.Proofs.WordStages.source643.2.2 InitECandidate.Proofs.SmallStages.Oracles643.oracle643
