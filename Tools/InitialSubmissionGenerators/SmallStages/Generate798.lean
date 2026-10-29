import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles798
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 798 InitECandidate.Proofs.WordStages.source798.2.1 InitECandidate.Proofs.WordStages.source798.2.2 InitECandidate.Proofs.SmallStages.Oracles798.oracle798
