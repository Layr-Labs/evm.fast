import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles889
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 889 InitECandidate.Proofs.WordStages.source889.2.1 InitECandidate.Proofs.WordStages.source889.2.2 InitECandidate.Proofs.SmallStages.Oracles889.oracle889
