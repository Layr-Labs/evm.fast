import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles829
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 829 InitECandidate.Proofs.WordStages.source829.2.1 InitECandidate.Proofs.WordStages.source829.2.2 InitECandidate.Proofs.SmallStages.Oracles829.oracle829
