import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles654
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 654 InitECandidate.Proofs.WordStages.source654.2.1 InitECandidate.Proofs.WordStages.source654.2.2 InitECandidate.Proofs.SmallStages.Oracles654.oracle654
