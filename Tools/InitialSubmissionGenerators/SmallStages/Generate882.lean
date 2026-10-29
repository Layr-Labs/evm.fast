import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles882
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 882 InitECandidate.Proofs.WordStages.source882.2.1 InitECandidate.Proofs.WordStages.source882.2.2 InitECandidate.Proofs.SmallStages.Oracles882.oracle882
