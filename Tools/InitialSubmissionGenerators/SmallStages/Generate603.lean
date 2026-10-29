import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles603
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 603 InitECandidate.Proofs.WordStages.source603.2.1 InitECandidate.Proofs.WordStages.source603.2.2 InitECandidate.Proofs.SmallStages.Oracles603.oracle603
