import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles737
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 737 InitECandidate.Proofs.WordStages.source737.2.1 InitECandidate.Proofs.WordStages.source737.2.2 InitECandidate.Proofs.SmallStages.Oracles737.oracle737
