import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles518
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 518 InitECandidate.Proofs.WordStages.source518.2.1 InitECandidate.Proofs.WordStages.source518.2.2 InitECandidate.Proofs.SmallStages.Oracles518.oracle518
