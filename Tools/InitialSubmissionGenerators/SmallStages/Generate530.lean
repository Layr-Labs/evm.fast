import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles530
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 530 InitECandidate.Proofs.WordStages.source530.2.1 InitECandidate.Proofs.WordStages.source530.2.2 InitECandidate.Proofs.SmallStages.Oracles530.oracle530
