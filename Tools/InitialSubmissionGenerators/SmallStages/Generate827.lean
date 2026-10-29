import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles827
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 827 InitECandidate.Proofs.WordStages.source827.2.1 InitECandidate.Proofs.WordStages.source827.2.2 InitECandidate.Proofs.SmallStages.Oracles827.oracle827
