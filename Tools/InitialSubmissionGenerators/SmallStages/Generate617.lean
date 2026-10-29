import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles617
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 617 InitECandidate.Proofs.WordStages.source617.2.1 InitECandidate.Proofs.WordStages.source617.2.2 InitECandidate.Proofs.SmallStages.Oracles617.oracle617
