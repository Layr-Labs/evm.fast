import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles637
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 637 InitECandidate.Proofs.WordStages.source637.2.1 InitECandidate.Proofs.WordStages.source637.2.2 InitECandidate.Proofs.SmallStages.Oracles637.oracle637
