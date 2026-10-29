import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles466
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 466 InitECandidate.Proofs.WordStages.source466.2.1 InitECandidate.Proofs.WordStages.source466.2.2 InitECandidate.Proofs.SmallStages.Oracles466.oracle466
