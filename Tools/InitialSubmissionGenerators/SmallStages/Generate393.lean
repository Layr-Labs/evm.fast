import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles393
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 393 InitECandidate.Proofs.WordStages.source393.2.1 InitECandidate.Proofs.WordStages.source393.2.2 InitECandidate.Proofs.SmallStages.Oracles393.oracle393
