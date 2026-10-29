import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles564
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 564 InitECandidate.Proofs.WordStages.source564.2.1 InitECandidate.Proofs.WordStages.source564.2.2 InitECandidate.Proofs.SmallStages.Oracles564.oracle564
