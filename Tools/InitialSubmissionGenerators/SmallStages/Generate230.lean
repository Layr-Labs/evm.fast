import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles230
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 230 InitECandidate.Proofs.WordStages.source230.2.1 InitECandidate.Proofs.WordStages.source230.2.2 InitECandidate.Proofs.SmallStages.Oracles230.oracle230
