import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles803
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 803 InitECandidate.Proofs.WordStages.source803.2.1 InitECandidate.Proofs.WordStages.source803.2.2 InitECandidate.Proofs.SmallStages.Oracles803.oracle803
