import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles839
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 839 InitECandidate.Proofs.WordStages.source839.2.1 InitECandidate.Proofs.WordStages.source839.2.2 InitECandidate.Proofs.SmallStages.Oracles839.oracle839
