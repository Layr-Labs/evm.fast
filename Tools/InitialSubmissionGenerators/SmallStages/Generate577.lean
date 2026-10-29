import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles577
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 577 InitECandidate.Proofs.WordStages.source577.2.1 InitECandidate.Proofs.WordStages.source577.2.2 InitECandidate.Proofs.SmallStages.Oracles577.oracle577
