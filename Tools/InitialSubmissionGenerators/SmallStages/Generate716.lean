import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles716
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 716 InitECandidate.Proofs.WordStages.source716.2.1 InitECandidate.Proofs.WordStages.source716.2.2 InitECandidate.Proofs.SmallStages.Oracles716.oracle716
