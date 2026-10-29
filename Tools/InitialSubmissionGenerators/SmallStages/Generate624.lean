import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles624
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 624 InitECandidate.Proofs.WordStages.source624.2.1 InitECandidate.Proofs.WordStages.source624.2.2 InitECandidate.Proofs.SmallStages.Oracles624.oracle624
