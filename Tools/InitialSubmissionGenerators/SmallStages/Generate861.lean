import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles861
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 861 InitECandidate.Proofs.WordStages.source861.2.1 InitECandidate.Proofs.WordStages.source861.2.2 InitECandidate.Proofs.SmallStages.Oracles861.oracle861
