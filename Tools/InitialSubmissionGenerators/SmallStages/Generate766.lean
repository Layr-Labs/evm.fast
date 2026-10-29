import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles766
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 766 InitECandidate.Proofs.WordStages.source766.2.1 InitECandidate.Proofs.WordStages.source766.2.2 InitECandidate.Proofs.SmallStages.Oracles766.oracle766
