import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles365
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 365 InitECandidate.Proofs.WordStages.source365.2.1 InitECandidate.Proofs.WordStages.source365.2.2 InitECandidate.Proofs.SmallStages.Oracles365.oracle365
