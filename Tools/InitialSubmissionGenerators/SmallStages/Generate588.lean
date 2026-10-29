import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles588
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 588 InitECandidate.Proofs.WordStages.source588.2.1 InitECandidate.Proofs.WordStages.source588.2.2 InitECandidate.Proofs.SmallStages.Oracles588.oracle588
