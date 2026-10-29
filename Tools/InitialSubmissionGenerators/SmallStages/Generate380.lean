import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles380
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 380 InitECandidate.Proofs.WordStages.source380.2.1 InitECandidate.Proofs.WordStages.source380.2.2 InitECandidate.Proofs.SmallStages.Oracles380.oracle380
