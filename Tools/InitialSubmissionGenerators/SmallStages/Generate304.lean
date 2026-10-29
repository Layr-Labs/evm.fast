import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles304
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 304 InitECandidate.Proofs.WordStages.source304.2.1 InitECandidate.Proofs.WordStages.source304.2.2 InitECandidate.Proofs.SmallStages.Oracles304.oracle304
