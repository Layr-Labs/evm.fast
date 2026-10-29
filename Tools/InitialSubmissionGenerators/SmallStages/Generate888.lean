import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles888
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 888 InitECandidate.Proofs.WordStages.source888.2.1 InitECandidate.Proofs.WordStages.source888.2.2 InitECandidate.Proofs.SmallStages.Oracles888.oracle888
