import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles852
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 852 InitECandidate.Proofs.WordStages.source852.2.1 InitECandidate.Proofs.WordStages.source852.2.2 InitECandidate.Proofs.SmallStages.Oracles852.oracle852
