import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles834
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 834 InitECandidate.Proofs.WordStages.source834.2.1 InitECandidate.Proofs.WordStages.source834.2.2 InitECandidate.Proofs.SmallStages.Oracles834.oracle834
