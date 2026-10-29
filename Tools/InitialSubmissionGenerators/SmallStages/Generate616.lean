import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles616
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 616 InitECandidate.Proofs.WordStages.source616.2.1 InitECandidate.Proofs.WordStages.source616.2.2 InitECandidate.Proofs.SmallStages.Oracles616.oracle616
