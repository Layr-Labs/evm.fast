import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles336
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 336 InitECandidate.Proofs.WordStages.source336.2.1 InitECandidate.Proofs.WordStages.source336.2.2 InitECandidate.Proofs.SmallStages.Oracles336.oracle336
