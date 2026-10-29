import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles580
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 580 InitECandidate.Proofs.WordStages.source580.2.1 InitECandidate.Proofs.WordStages.source580.2.2 InitECandidate.Proofs.SmallStages.Oracles580.oracle580
