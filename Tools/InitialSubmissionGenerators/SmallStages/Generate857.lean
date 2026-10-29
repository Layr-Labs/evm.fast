import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles857
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 857 InitECandidate.Proofs.WordStages.source857.2.1 InitECandidate.Proofs.WordStages.source857.2.2 InitECandidate.Proofs.SmallStages.Oracles857.oracle857
