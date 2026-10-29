import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles758
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 758 InitECandidate.Proofs.WordStages.source758.2.1 InitECandidate.Proofs.WordStages.source758.2.2 InitECandidate.Proofs.SmallStages.Oracles758.oracle758
