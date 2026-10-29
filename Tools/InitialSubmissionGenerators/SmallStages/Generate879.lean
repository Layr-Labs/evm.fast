import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles879
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 879 InitECandidate.Proofs.WordStages.source879.2.1 InitECandidate.Proofs.WordStages.source879.2.2 InitECandidate.Proofs.SmallStages.Oracles879.oracle879
