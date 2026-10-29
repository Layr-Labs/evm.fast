import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles757
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 757 InitECandidate.Proofs.WordStages.source757.2.1 InitECandidate.Proofs.WordStages.source757.2.2 InitECandidate.Proofs.SmallStages.Oracles757.oracle757
