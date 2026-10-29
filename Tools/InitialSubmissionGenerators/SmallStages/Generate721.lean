import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles721
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 721 InitECandidate.Proofs.WordStages.source721.2.1 InitECandidate.Proofs.WordStages.source721.2.2 InitECandidate.Proofs.SmallStages.Oracles721.oracle721
