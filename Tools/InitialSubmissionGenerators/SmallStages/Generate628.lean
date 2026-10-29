import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles628
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 628 InitECandidate.Proofs.WordStages.source628.2.1 InitECandidate.Proofs.WordStages.source628.2.2 InitECandidate.Proofs.SmallStages.Oracles628.oracle628
