import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles886
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 886 InitECandidate.Proofs.WordStages.source886.2.1 InitECandidate.Proofs.WordStages.source886.2.2 InitECandidate.Proofs.SmallStages.Oracles886.oracle886
