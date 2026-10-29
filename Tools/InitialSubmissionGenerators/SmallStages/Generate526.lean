import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles526
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 526 InitECandidate.Proofs.WordStages.source526.2.1 InitECandidate.Proofs.WordStages.source526.2.2 InitECandidate.Proofs.SmallStages.Oracles526.oracle526
