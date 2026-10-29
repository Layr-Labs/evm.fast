import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles831
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 831 InitECandidate.Proofs.WordStages.source831.2.1 InitECandidate.Proofs.WordStages.source831.2.2 InitECandidate.Proofs.SmallStages.Oracles831.oracle831
