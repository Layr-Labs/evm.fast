import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles705
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 705 InitECandidate.Proofs.WordStages.source705.2.1 InitECandidate.Proofs.WordStages.source705.2.2 InitECandidate.Proofs.SmallStages.Oracles705.oracle705
