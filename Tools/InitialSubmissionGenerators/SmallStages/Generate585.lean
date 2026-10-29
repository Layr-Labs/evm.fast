import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles585
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 585 InitECandidate.Proofs.WordStages.source585.2.1 InitECandidate.Proofs.WordStages.source585.2.2 InitECandidate.Proofs.SmallStages.Oracles585.oracle585
