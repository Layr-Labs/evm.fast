import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles540
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 540 InitECandidate.Proofs.WordStages.source540.2.1 InitECandidate.Proofs.WordStages.source540.2.2 InitECandidate.Proofs.SmallStages.Oracles540.oracle540
