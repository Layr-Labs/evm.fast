import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles690
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 690 InitECandidate.Proofs.WordStages.source690.2.1 InitECandidate.Proofs.WordStages.source690.2.2 InitECandidate.Proofs.SmallStages.Oracles690.oracle690
