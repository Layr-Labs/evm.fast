import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles642
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 642 InitECandidate.Proofs.WordStages.source642.2.1 InitECandidate.Proofs.WordStages.source642.2.2 InitECandidate.Proofs.SmallStages.Oracles642.oracle642
