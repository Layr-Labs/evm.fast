import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles698
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 698 InitECandidate.Proofs.WordStages.source698.2.1 InitECandidate.Proofs.WordStages.source698.2.2 InitECandidate.Proofs.SmallStages.Oracles698.oracle698
