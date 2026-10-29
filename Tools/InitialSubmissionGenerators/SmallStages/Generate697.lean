import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles697
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 697 InitECandidate.Proofs.WordStages.source697.2.1 InitECandidate.Proofs.WordStages.source697.2.2 InitECandidate.Proofs.SmallStages.Oracles697.oracle697
