import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles513
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 513 InitECandidate.Proofs.WordStages.source513.2.1 InitECandidate.Proofs.WordStages.source513.2.2 InitECandidate.Proofs.SmallStages.Oracles513.oracle513
