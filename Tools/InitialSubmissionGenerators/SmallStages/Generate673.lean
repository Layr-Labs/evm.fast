import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles673
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 673 InitECandidate.Proofs.WordStages.source673.2.1 InitECandidate.Proofs.WordStages.source673.2.2 InitECandidate.Proofs.SmallStages.Oracles673.oracle673
