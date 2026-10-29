import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles685
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 685 InitECandidate.Proofs.WordStages.source685.2.1 InitECandidate.Proofs.WordStages.source685.2.2 InitECandidate.Proofs.SmallStages.Oracles685.oracle685
