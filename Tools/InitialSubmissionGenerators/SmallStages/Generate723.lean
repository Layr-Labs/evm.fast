import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles723
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 723 InitECandidate.Proofs.WordStages.source723.2.1 InitECandidate.Proofs.WordStages.source723.2.2 InitECandidate.Proofs.SmallStages.Oracles723.oracle723
