import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles619
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 619 InitECandidate.Proofs.WordStages.source619.2.1 InitECandidate.Proofs.WordStages.source619.2.2 InitECandidate.Proofs.SmallStages.Oracles619.oracle619
