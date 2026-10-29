import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles644
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 644 InitECandidate.Proofs.WordStages.source644.2.1 InitECandidate.Proofs.WordStages.source644.2.2 InitECandidate.Proofs.SmallStages.Oracles644.oracle644
