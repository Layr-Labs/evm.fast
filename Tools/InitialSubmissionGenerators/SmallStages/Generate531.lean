import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles531
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 531 InitECandidate.Proofs.WordStages.source531.2.1 InitECandidate.Proofs.WordStages.source531.2.2 InitECandidate.Proofs.SmallStages.Oracles531.oracle531
