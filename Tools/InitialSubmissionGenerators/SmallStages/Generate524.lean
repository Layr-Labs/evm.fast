import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles524
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 524 InitECandidate.Proofs.WordStages.source524.2.1 InitECandidate.Proofs.WordStages.source524.2.2 InitECandidate.Proofs.SmallStages.Oracles524.oracle524
