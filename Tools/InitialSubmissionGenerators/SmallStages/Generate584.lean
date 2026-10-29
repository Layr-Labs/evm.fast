import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles584
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 584 InitECandidate.Proofs.WordStages.source584.2.1 InitECandidate.Proofs.WordStages.source584.2.2 InitECandidate.Proofs.SmallStages.Oracles584.oracle584
