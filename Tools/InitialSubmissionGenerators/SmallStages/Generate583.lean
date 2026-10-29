import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles583
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 583 InitECandidate.Proofs.WordStages.source583.2.1 InitECandidate.Proofs.WordStages.source583.2.2 InitECandidate.Proofs.SmallStages.Oracles583.oracle583
