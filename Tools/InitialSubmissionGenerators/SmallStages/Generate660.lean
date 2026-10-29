import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles660
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 660 InitECandidate.Proofs.WordStages.source660.2.1 InitECandidate.Proofs.WordStages.source660.2.2 InitECandidate.Proofs.SmallStages.Oracles660.oracle660
