import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles709
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 709 InitECandidate.Proofs.WordStages.source709.2.1 InitECandidate.Proofs.WordStages.source709.2.2 InitECandidate.Proofs.SmallStages.Oracles709.oracle709
