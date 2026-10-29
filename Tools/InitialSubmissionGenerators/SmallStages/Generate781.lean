import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles781
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 781 InitECandidate.Proofs.WordStages.source781.2.1 InitECandidate.Proofs.WordStages.source781.2.2 InitECandidate.Proofs.SmallStages.Oracles781.oracle781
