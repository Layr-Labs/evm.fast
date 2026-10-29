import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles586
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 586 InitECandidate.Proofs.WordStages.source586.2.1 InitECandidate.Proofs.WordStages.source586.2.2 InitECandidate.Proofs.SmallStages.Oracles586.oracle586
