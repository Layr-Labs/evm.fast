import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles706
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 706 InitECandidate.Proofs.WordStages.source706.2.1 InitECandidate.Proofs.WordStages.source706.2.2 InitECandidate.Proofs.SmallStages.Oracles706.oracle706
