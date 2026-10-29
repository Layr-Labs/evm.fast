import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles486
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 486 InitECandidate.Proofs.WordStages.source486.2.1 InitECandidate.Proofs.WordStages.source486.2.2 InitECandidate.Proofs.SmallStages.Oracles486.oracle486
