import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles669
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 669 InitECandidate.Proofs.WordStages.source669.2.1 InitECandidate.Proofs.WordStages.source669.2.2 InitECandidate.Proofs.SmallStages.Oracles669.oracle669
