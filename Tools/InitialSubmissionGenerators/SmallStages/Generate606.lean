import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles606
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 606 InitECandidate.Proofs.WordStages.source606.2.1 InitECandidate.Proofs.WordStages.source606.2.2 InitECandidate.Proofs.SmallStages.Oracles606.oracle606
