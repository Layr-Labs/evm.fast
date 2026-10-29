import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles627
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 627 InitECandidate.Proofs.WordStages.source627.2.1 InitECandidate.Proofs.WordStages.source627.2.2 InitECandidate.Proofs.SmallStages.Oracles627.oracle627
