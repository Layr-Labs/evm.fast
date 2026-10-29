import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles520
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 520 InitECandidate.Proofs.WordStages.source520.2.1 InitECandidate.Proofs.WordStages.source520.2.2 InitECandidate.Proofs.SmallStages.Oracles520.oracle520
