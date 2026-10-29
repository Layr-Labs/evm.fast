import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles512
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 512 InitECandidate.Proofs.WordStages.source512.2.1 InitECandidate.Proofs.WordStages.source512.2.2 InitECandidate.Proofs.SmallStages.Oracles512.oracle512
