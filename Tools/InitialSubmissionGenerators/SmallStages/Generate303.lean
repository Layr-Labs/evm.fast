import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles303
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 303 InitECandidate.Proofs.WordStages.source303.2.1 InitECandidate.Proofs.WordStages.source303.2.2 InitECandidate.Proofs.SmallStages.Oracles303.oracle303
