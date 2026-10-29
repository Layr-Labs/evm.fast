import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles657
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 657 InitECandidate.Proofs.WordStages.source657.2.1 InitECandidate.Proofs.WordStages.source657.2.2 InitECandidate.Proofs.SmallStages.Oracles657.oracle657
