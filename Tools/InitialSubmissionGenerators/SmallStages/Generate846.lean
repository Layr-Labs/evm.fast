import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles846
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 846 InitECandidate.Proofs.WordStages.source846.2.1 InitECandidate.Proofs.WordStages.source846.2.2 InitECandidate.Proofs.SmallStages.Oracles846.oracle846
