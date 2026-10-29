import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles682
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 682 InitECandidate.Proofs.WordStages.source682.2.1 InitECandidate.Proofs.WordStages.source682.2.2 InitECandidate.Proofs.SmallStages.Oracles682.oracle682
