import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles578
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 578 InitECandidate.Proofs.WordStages.source578.2.1 InitECandidate.Proofs.WordStages.source578.2.2 InitECandidate.Proofs.SmallStages.Oracles578.oracle578
