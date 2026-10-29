import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles406
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 406 InitECandidate.Proofs.WordStages.source406.2.1 InitECandidate.Proofs.WordStages.source406.2.2 InitECandidate.Proofs.SmallStages.Oracles406.oracle406
