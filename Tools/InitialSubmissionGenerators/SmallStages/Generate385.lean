import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles385
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 385 InitECandidate.Proofs.WordStages.source385.2.1 InitECandidate.Proofs.WordStages.source385.2.2 InitECandidate.Proofs.SmallStages.Oracles385.oracle385
