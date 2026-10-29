import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles536
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 536 InitECandidate.Proofs.WordStages.source536.2.1 InitECandidate.Proofs.WordStages.source536.2.2 InitECandidate.Proofs.SmallStages.Oracles536.oracle536
