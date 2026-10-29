import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles869
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 869 InitECandidate.Proofs.WordStages.source869.2.1 InitECandidate.Proofs.WordStages.source869.2.2 InitECandidate.Proofs.SmallStages.Oracles869.oracle869
