import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles636
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 636 InitECandidate.Proofs.WordStages.source636.2.1 InitECandidate.Proofs.WordStages.source636.2.2 InitECandidate.Proofs.SmallStages.Oracles636.oracle636
