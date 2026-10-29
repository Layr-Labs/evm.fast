import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles863
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 863 InitECandidate.Proofs.WordStages.source863.2.1 InitECandidate.Proofs.WordStages.source863.2.2 InitECandidate.Proofs.SmallStages.Oracles863.oracle863
