import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles665
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 665 InitECandidate.Proofs.WordStages.source665.2.1 InitECandidate.Proofs.WordStages.source665.2.2 InitECandidate.Proofs.SmallStages.Oracles665.oracle665
