import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles710
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 710 InitECandidate.Proofs.WordStages.source710.2.1 InitECandidate.Proofs.WordStages.source710.2.2 InitECandidate.Proofs.SmallStages.Oracles710.oracle710
