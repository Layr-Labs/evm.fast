import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles824
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 824 InitECandidate.Proofs.WordStages.source824.2.1 InitECandidate.Proofs.WordStages.source824.2.2 InitECandidate.Proofs.SmallStages.Oracles824.oracle824
