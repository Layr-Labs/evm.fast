import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles425
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 425 InitECandidate.Proofs.WordStages.source425.2.1 InitECandidate.Proofs.WordStages.source425.2.2 InitECandidate.Proofs.SmallStages.Oracles425.oracle425
