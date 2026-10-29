import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles191
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 191 InitECandidate.Proofs.WordStages.source191.2.1 InitECandidate.Proofs.WordStages.source191.2.2 InitECandidate.Proofs.SmallStages.Oracles191.oracle191
