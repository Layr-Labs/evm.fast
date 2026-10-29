import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles492
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 492 InitECandidate.Proofs.WordStages.source492.2.1 InitECandidate.Proofs.WordStages.source492.2.2 InitECandidate.Proofs.SmallStages.Oracles492.oracle492
