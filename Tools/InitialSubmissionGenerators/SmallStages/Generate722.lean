import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles722
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 722 InitECandidate.Proofs.WordStages.source722.2.1 InitECandidate.Proofs.WordStages.source722.2.2 InitECandidate.Proofs.SmallStages.Oracles722.oracle722
