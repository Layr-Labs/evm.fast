import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles854
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 854 InitECandidate.Proofs.WordStages.source854.2.1 InitECandidate.Proofs.WordStages.source854.2.2 InitECandidate.Proofs.SmallStages.Oracles854.oracle854
