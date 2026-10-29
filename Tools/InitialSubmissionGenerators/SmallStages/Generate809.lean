import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles809
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 809 InitECandidate.Proofs.WordStages.source809.2.1 InitECandidate.Proofs.WordStages.source809.2.2 InitECandidate.Proofs.SmallStages.Oracles809.oracle809
