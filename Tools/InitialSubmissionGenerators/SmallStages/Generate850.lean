import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles850
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 850 InitECandidate.Proofs.WordStages.source850.2.1 InitECandidate.Proofs.WordStages.source850.2.2 InitECandidate.Proofs.SmallStages.Oracles850.oracle850
