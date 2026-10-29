import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles859
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 859 InitECandidate.Proofs.WordStages.source859.2.1 InitECandidate.Proofs.WordStages.source859.2.2 InitECandidate.Proofs.SmallStages.Oracles859.oracle859
