import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles780
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 780 InitECandidate.Proofs.WordStages.source780.2.1 InitECandidate.Proofs.WordStages.source780.2.2 InitECandidate.Proofs.SmallStages.Oracles780.oracle780
