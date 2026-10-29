import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles755
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 755 InitECandidate.Proofs.WordStages.source755.2.1 InitECandidate.Proofs.WordStages.source755.2.2 InitECandidate.Proofs.SmallStages.Oracles755.oracle755
