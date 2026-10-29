import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles207
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 207 InitECandidate.Proofs.WordStages.source207.2.1 InitECandidate.Proofs.WordStages.source207.2.2 InitECandidate.Proofs.SmallStages.Oracles207.oracle207
