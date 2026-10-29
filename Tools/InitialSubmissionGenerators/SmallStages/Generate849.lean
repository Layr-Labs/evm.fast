import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles849
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 849 InitECandidate.Proofs.WordStages.source849.2.1 InitECandidate.Proofs.WordStages.source849.2.2 InitECandidate.Proofs.SmallStages.Oracles849.oracle849
