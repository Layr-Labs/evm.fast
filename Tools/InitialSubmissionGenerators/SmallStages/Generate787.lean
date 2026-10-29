import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles787
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 787 InitECandidate.Proofs.WordStages.source787.2.1 InitECandidate.Proofs.WordStages.source787.2.2 InitECandidate.Proofs.SmallStages.Oracles787.oracle787
