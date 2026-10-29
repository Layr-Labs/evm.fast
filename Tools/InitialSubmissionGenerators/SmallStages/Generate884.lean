import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles884
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 884 InitECandidate.Proofs.WordStages.source884.2.1 InitECandidate.Proofs.WordStages.source884.2.2 InitECandidate.Proofs.SmallStages.Oracles884.oracle884
