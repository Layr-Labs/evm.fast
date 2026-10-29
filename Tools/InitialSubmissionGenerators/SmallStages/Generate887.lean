import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles887
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 887 InitECandidate.Proofs.WordStages.source887.2.1 InitECandidate.Proofs.WordStages.source887.2.2 InitECandidate.Proofs.SmallStages.Oracles887.oracle887
