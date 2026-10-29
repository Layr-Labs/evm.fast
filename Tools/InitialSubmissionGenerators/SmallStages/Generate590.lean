import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles590
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 590 InitECandidate.Proofs.WordStages.source590.2.1 InitECandidate.Proofs.WordStages.source590.2.2 InitECandidate.Proofs.SmallStages.Oracles590.oracle590
