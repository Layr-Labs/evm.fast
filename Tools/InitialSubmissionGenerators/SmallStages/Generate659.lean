import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles659
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 659 InitECandidate.Proofs.WordStages.source659.2.1 InitECandidate.Proofs.WordStages.source659.2.2 InitECandidate.Proofs.SmallStages.Oracles659.oracle659
