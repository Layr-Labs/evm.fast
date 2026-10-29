import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles676
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 676 InitECandidate.Proofs.WordStages.source676.2.1 InitECandidate.Proofs.WordStages.source676.2.2 InitECandidate.Proofs.SmallStages.Oracles676.oracle676
