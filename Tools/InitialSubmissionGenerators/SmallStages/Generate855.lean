import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles855
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 855 InitECandidate.Proofs.WordStages.source855.2.1 InitECandidate.Proofs.WordStages.source855.2.2 InitECandidate.Proofs.SmallStages.Oracles855.oracle855
