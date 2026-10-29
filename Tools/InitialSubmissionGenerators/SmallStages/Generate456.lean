import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles456
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 456 InitECandidate.Proofs.WordStages.source456.2.1 InitECandidate.Proofs.WordStages.source456.2.2 InitECandidate.Proofs.SmallStages.Oracles456.oracle456
