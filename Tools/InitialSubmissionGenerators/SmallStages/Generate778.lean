import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles778
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 778 InitECandidate.Proofs.WordStages.source778.2.1 InitECandidate.Proofs.WordStages.source778.2.2 InitECandidate.Proofs.SmallStages.Oracles778.oracle778
