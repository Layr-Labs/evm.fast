import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles514
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 514 InitECandidate.Proofs.WordStages.source514.2.1 InitECandidate.Proofs.WordStages.source514.2.2 InitECandidate.Proofs.SmallStages.Oracles514.oracle514
