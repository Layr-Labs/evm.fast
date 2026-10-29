import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles745
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 745 InitECandidate.Proofs.WordStages.source745.2.1 InitECandidate.Proofs.WordStages.source745.2.2 InitECandidate.Proofs.SmallStages.Oracles745.oracle745
