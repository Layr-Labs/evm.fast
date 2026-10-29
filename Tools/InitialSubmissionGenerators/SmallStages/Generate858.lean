import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles858
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 858 InitECandidate.Proofs.WordStages.source858.2.1 InitECandidate.Proofs.WordStages.source858.2.2 InitECandidate.Proofs.SmallStages.Oracles858.oracle858
