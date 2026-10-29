import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles599
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 599 InitECandidate.Proofs.WordStages.source599.2.1 InitECandidate.Proofs.WordStages.source599.2.2 InitECandidate.Proofs.SmallStages.Oracles599.oracle599
