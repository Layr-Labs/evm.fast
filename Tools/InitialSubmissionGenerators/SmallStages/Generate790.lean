import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles790
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 790 InitECandidate.Proofs.WordStages.source790.2.1 InitECandidate.Proofs.WordStages.source790.2.2 InitECandidate.Proofs.SmallStages.Oracles790.oracle790
