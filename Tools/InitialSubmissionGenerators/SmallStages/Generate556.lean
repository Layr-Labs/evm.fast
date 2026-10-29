import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles556
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 556 InitECandidate.Proofs.WordStages.source556.2.1 InitECandidate.Proofs.WordStages.source556.2.2 InitECandidate.Proofs.SmallStages.Oracles556.oracle556
