import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles836
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 836 InitECandidate.Proofs.WordStages.source836.2.1 InitECandidate.Proofs.WordStages.source836.2.2 InitECandidate.Proofs.SmallStages.Oracles836.oracle836
