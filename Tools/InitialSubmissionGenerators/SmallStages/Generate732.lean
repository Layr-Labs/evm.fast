import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles732
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 732 InitECandidate.Proofs.WordStages.source732.2.1 InitECandidate.Proofs.WordStages.source732.2.2 InitECandidate.Proofs.SmallStages.Oracles732.oracle732
