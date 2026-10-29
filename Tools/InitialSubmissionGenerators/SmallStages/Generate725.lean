import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles725
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 725 InitECandidate.Proofs.WordStages.source725.2.1 InitECandidate.Proofs.WordStages.source725.2.2 InitECandidate.Proofs.SmallStages.Oracles725.oracle725
