import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles409
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 409 InitECandidate.Proofs.WordStages.source409.2.1 InitECandidate.Proofs.WordStages.source409.2.2 InitECandidate.Proofs.SmallStages.Oracles409.oracle409
