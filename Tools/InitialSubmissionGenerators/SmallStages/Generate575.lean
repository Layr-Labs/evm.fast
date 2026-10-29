import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles575
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 575 InitECandidate.Proofs.WordStages.source575.2.1 InitECandidate.Proofs.WordStages.source575.2.2 InitECandidate.Proofs.SmallStages.Oracles575.oracle575
