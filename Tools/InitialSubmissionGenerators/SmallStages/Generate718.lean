import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles718
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 718 InitECandidate.Proofs.WordStages.source718.2.1 InitECandidate.Proofs.WordStages.source718.2.2 InitECandidate.Proofs.SmallStages.Oracles718.oracle718
