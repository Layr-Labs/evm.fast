import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles609
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 609 InitECandidate.Proofs.WordStages.source609.2.1 InitECandidate.Proofs.WordStages.source609.2.2 InitECandidate.Proofs.SmallStages.Oracles609.oracle609
