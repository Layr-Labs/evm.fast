import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles610
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 610 InitECandidate.Proofs.WordStages.source610.2.1 InitECandidate.Proofs.WordStages.source610.2.2 InitECandidate.Proofs.SmallStages.Oracles610.oracle610
