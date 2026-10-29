import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles384
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 384 InitECandidate.Proofs.WordStages.source384.2.1 InitECandidate.Proofs.WordStages.source384.2.2 InitECandidate.Proofs.SmallStages.Oracles384.oracle384
