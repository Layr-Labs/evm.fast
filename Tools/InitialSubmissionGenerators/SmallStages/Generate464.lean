import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles464
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 464 InitECandidate.Proofs.WordStages.source464.2.1 InitECandidate.Proofs.WordStages.source464.2.2 InitECandidate.Proofs.SmallStages.Oracles464.oracle464
