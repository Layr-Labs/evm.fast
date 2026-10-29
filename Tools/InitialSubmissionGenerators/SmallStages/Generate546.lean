import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles546
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 546 InitECandidate.Proofs.WordStages.source546.2.1 InitECandidate.Proofs.WordStages.source546.2.2 InitECandidate.Proofs.SmallStages.Oracles546.oracle546
