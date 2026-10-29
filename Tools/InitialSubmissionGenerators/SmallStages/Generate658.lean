import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles658
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 658 InitECandidate.Proofs.WordStages.source658.2.1 InitECandidate.Proofs.WordStages.source658.2.2 InitECandidate.Proofs.SmallStages.Oracles658.oracle658
