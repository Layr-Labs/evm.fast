import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles632
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 632 InitECandidate.Proofs.WordStages.source632.2.1 InitECandidate.Proofs.WordStages.source632.2.2 InitECandidate.Proofs.SmallStages.Oracles632.oracle632
