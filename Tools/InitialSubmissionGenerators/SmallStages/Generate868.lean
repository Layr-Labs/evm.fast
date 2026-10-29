import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles868
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 868 InitECandidate.Proofs.WordStages.source868.2.1 InitECandidate.Proofs.WordStages.source868.2.2 InitECandidate.Proofs.SmallStages.Oracles868.oracle868
