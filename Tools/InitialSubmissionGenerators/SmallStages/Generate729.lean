import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles729
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 729 InitECandidate.Proofs.WordStages.source729.2.1 InitECandidate.Proofs.WordStages.source729.2.2 InitECandidate.Proofs.SmallStages.Oracles729.oracle729
