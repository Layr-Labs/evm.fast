import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles817
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 817 InitECandidate.Proofs.WordStages.source817.2.1 InitECandidate.Proofs.WordStages.source817.2.2 InitECandidate.Proofs.SmallStages.Oracles817.oracle817
