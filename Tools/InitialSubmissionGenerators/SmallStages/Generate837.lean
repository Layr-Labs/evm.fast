import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles837
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 837 InitECandidate.Proofs.WordStages.source837.2.1 InitECandidate.Proofs.WordStages.source837.2.2 InitECandidate.Proofs.SmallStages.Oracles837.oracle837
