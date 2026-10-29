import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles418
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 418 InitECandidate.Proofs.WordStages.source418.2.1 InitECandidate.Proofs.WordStages.source418.2.2 InitECandidate.Proofs.SmallStages.Oracles418.oracle418
