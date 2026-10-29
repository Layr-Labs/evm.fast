import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles681
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 681 InitECandidate.Proofs.WordStages.source681.2.1 InitECandidate.Proofs.WordStages.source681.2.2 InitECandidate.Proofs.SmallStages.Oracles681.oracle681
