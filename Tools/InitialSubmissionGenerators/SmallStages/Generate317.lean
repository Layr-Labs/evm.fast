import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles317
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 317 InitECandidate.Proofs.WordStages.source317.2.1 InitECandidate.Proofs.WordStages.source317.2.2 InitECandidate.Proofs.SmallStages.Oracles317.oracle317
