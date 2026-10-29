import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles433
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 433 InitECandidate.Proofs.WordStages.source433.2.1 InitECandidate.Proofs.WordStages.source433.2.2 InitECandidate.Proofs.SmallStages.Oracles433.oracle433
