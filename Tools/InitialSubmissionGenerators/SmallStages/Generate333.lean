import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles333
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 333 InitECandidate.Proofs.WordStages.source333.2.1 InitECandidate.Proofs.WordStages.source333.2.2 InitECandidate.Proofs.SmallStages.Oracles333.oracle333
