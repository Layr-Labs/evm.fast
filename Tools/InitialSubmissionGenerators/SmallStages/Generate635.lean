import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles635
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 635 InitECandidate.Proofs.WordStages.source635.2.1 InitECandidate.Proofs.WordStages.source635.2.2 InitECandidate.Proofs.SmallStages.Oracles635.oracle635
