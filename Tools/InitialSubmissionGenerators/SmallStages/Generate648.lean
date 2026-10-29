import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles648
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 648 InitECandidate.Proofs.WordStages.source648.2.1 InitECandidate.Proofs.WordStages.source648.2.2 InitECandidate.Proofs.SmallStages.Oracles648.oracle648
