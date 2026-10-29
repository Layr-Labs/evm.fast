import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles813
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 813 InitECandidate.Proofs.WordStages.source813.2.1 InitECandidate.Proofs.WordStages.source813.2.2 InitECandidate.Proofs.SmallStages.Oracles813.oracle813
