import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles368
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 368 InitECandidate.Proofs.WordStages.source368.2.1 InitECandidate.Proofs.WordStages.source368.2.2 InitECandidate.Proofs.SmallStages.Oracles368.oracle368
