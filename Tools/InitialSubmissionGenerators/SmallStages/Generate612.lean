import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles612
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 612 InitECandidate.Proofs.WordStages.source612.2.1 InitECandidate.Proofs.WordStages.source612.2.2 InitECandidate.Proofs.SmallStages.Oracles612.oracle612
