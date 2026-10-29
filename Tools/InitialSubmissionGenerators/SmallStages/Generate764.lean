import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles764
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 764 InitECandidate.Proofs.WordStages.source764.2.1 InitECandidate.Proofs.WordStages.source764.2.2 InitECandidate.Proofs.SmallStages.Oracles764.oracle764
