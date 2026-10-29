import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles750
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 750 InitECandidate.Proofs.WordStages.source750.2.1 InitECandidate.Proofs.WordStages.source750.2.2 InitECandidate.Proofs.SmallStages.Oracles750.oracle750
