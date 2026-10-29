import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles462
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 462 InitECandidate.Proofs.WordStages.source462.2.1 InitECandidate.Proofs.WordStages.source462.2.2 InitECandidate.Proofs.SmallStages.Oracles462.oracle462
