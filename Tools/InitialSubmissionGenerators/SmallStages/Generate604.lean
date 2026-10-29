import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles604
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 604 InitECandidate.Proofs.WordStages.source604.2.1 InitECandidate.Proofs.WordStages.source604.2.2 InitECandidate.Proofs.SmallStages.Oracles604.oracle604
