import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles428
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 428 InitECandidate.Proofs.WordStages.source428.2.1 InitECandidate.Proofs.WordStages.source428.2.2 InitECandidate.Proofs.SmallStages.Oracles428.oracle428
