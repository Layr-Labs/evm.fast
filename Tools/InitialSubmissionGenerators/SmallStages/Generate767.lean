import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles767
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 767 InitECandidate.Proofs.WordStages.source767.2.1 InitECandidate.Proofs.WordStages.source767.2.2 InitECandidate.Proofs.SmallStages.Oracles767.oracle767
