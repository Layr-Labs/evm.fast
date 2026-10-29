import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles454
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 454 InitECandidate.Proofs.WordStages.source454.2.1 InitECandidate.Proofs.WordStages.source454.2.2 InitECandidate.Proofs.SmallStages.Oracles454.oracle454
