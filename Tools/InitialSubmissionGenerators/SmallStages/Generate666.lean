import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles666
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 666 InitECandidate.Proofs.WordStages.source666.2.1 InitECandidate.Proofs.WordStages.source666.2.2 InitECandidate.Proofs.SmallStages.Oracles666.oracle666
