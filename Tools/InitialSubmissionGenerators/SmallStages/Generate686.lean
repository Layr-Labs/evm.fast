import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles686
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 686 InitECandidate.Proofs.WordStages.source686.2.1 InitECandidate.Proofs.WordStages.source686.2.2 InitECandidate.Proofs.SmallStages.Oracles686.oracle686
