import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles574
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 574 InitECandidate.Proofs.WordStages.source574.2.1 InitECandidate.Proofs.WordStages.source574.2.2 InitECandidate.Proofs.SmallStages.Oracles574.oracle574
