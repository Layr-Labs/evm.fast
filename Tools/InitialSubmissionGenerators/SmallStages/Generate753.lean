import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles753
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 753 InitECandidate.Proofs.WordStages.source753.2.1 InitECandidate.Proofs.WordStages.source753.2.2 InitECandidate.Proofs.SmallStages.Oracles753.oracle753
