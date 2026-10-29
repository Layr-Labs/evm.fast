import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles885
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 885 InitECandidate.Proofs.WordStages.source885.2.1 InitECandidate.Proofs.WordStages.source885.2.2 InitECandidate.Proofs.SmallStages.Oracles885.oracle885
