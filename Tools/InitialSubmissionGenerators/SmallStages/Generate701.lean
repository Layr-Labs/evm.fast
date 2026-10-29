import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles701
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 701 InitECandidate.Proofs.WordStages.source701.2.1 InitECandidate.Proofs.WordStages.source701.2.2 InitECandidate.Proofs.SmallStages.Oracles701.oracle701
