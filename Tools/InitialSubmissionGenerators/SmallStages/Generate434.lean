import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles434
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 434 InitECandidate.Proofs.WordStages.source434.2.1 InitECandidate.Proofs.WordStages.source434.2.2 InitECandidate.Proofs.SmallStages.Oracles434.oracle434
