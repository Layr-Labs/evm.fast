import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles438
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 438 InitECandidate.Proofs.WordStages.source438.2.1 InitECandidate.Proofs.WordStages.source438.2.2 InitECandidate.Proofs.SmallStages.Oracles438.oracle438
