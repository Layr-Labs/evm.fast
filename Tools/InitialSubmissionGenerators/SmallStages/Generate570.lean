import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles570
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 570 InitECandidate.Proofs.WordStages.source570.2.1 InitECandidate.Proofs.WordStages.source570.2.2 InitECandidate.Proofs.SmallStages.Oracles570.oracle570
