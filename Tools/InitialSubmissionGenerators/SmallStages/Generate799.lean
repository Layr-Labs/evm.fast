import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles799
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 799 InitECandidate.Proofs.WordStages.source799.2.1 InitECandidate.Proofs.WordStages.source799.2.2 InitECandidate.Proofs.SmallStages.Oracles799.oracle799
