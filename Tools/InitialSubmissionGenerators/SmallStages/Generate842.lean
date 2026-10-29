import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles842
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 842 InitECandidate.Proofs.WordStages.source842.2.1 InitECandidate.Proofs.WordStages.source842.2.2 InitECandidate.Proofs.SmallStages.Oracles842.oracle842
