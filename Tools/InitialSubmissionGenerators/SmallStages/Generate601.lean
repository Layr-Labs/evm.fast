import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles601
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 601 InitECandidate.Proofs.WordStages.source601.2.1 InitECandidate.Proofs.WordStages.source601.2.2 InitECandidate.Proofs.SmallStages.Oracles601.oracle601
