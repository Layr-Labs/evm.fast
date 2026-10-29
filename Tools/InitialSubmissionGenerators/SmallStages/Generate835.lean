import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles835
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 835 InitECandidate.Proofs.WordStages.source835.2.1 InitECandidate.Proofs.WordStages.source835.2.2 InitECandidate.Proofs.SmallStages.Oracles835.oracle835
