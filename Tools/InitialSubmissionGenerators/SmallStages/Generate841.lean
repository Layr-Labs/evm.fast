import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles841
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 841 InitECandidate.Proofs.WordStages.source841.2.1 InitECandidate.Proofs.WordStages.source841.2.2 InitECandidate.Proofs.SmallStages.Oracles841.oracle841
