import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles510
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 510 InitECandidate.Proofs.WordStages.source510.2.1 InitECandidate.Proofs.WordStages.source510.2.2 InitECandidate.Proofs.SmallStages.Oracles510.oracle510
