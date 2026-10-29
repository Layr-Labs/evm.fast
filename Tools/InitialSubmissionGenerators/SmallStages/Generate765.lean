import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles765
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 765 InitECandidate.Proofs.WordStages.source765.2.1 InitECandidate.Proofs.WordStages.source765.2.2 InitECandidate.Proofs.SmallStages.Oracles765.oracle765
