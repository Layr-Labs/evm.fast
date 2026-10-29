import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles822
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 822 InitECandidate.Proofs.WordStages.source822.2.1 InitECandidate.Proofs.WordStages.source822.2.2 InitECandidate.Proofs.SmallStages.Oracles822.oracle822
