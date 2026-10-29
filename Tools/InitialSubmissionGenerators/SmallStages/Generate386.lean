import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles386
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 386 InitECandidate.Proofs.WordStages.source386.2.1 InitECandidate.Proofs.WordStages.source386.2.2 InitECandidate.Proofs.SmallStages.Oracles386.oracle386
