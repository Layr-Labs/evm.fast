import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles856
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 856 InitECandidate.Proofs.WordStages.source856.2.1 InitECandidate.Proofs.WordStages.source856.2.2 InitECandidate.Proofs.SmallStages.Oracles856.oracle856
