import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles707
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 707 InitECandidate.Proofs.WordStages.source707.2.1 InitECandidate.Proofs.WordStages.source707.2.2 InitECandidate.Proofs.SmallStages.Oracles707.oracle707
