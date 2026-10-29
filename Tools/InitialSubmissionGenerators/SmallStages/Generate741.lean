import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles741
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 741 InitECandidate.Proofs.WordStages.source741.2.1 InitECandidate.Proofs.WordStages.source741.2.2 InitECandidate.Proofs.SmallStages.Oracles741.oracle741
