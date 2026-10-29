import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles422
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 422 InitECandidate.Proofs.WordStages.source422.2.1 InitECandidate.Proofs.WordStages.source422.2.2 InitECandidate.Proofs.SmallStages.Oracles422.oracle422
