import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles821
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 821 InitECandidate.Proofs.WordStages.source821.2.1 InitECandidate.Proofs.WordStages.source821.2.2 InitECandidate.Proofs.SmallStages.Oracles821.oracle821
