import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles877
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 877 InitECandidate.Proofs.WordStages.source877.2.1 InitECandidate.Proofs.WordStages.source877.2.2 InitECandidate.Proofs.SmallStages.Oracles877.oracle877
