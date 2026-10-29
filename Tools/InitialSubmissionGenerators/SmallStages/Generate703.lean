import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles703
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 703 InitECandidate.Proofs.WordStages.source703.2.1 InitECandidate.Proofs.WordStages.source703.2.2 InitECandidate.Proofs.SmallStages.Oracles703.oracle703
