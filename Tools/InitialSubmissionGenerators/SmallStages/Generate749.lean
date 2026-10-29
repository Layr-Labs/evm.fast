import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles749
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 749 InitECandidate.Proofs.WordStages.source749.2.1 InitECandidate.Proofs.WordStages.source749.2.2 InitECandidate.Proofs.SmallStages.Oracles749.oracle749
