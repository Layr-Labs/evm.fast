import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles761
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 761 InitECandidate.Proofs.WordStages.source761.2.1 InitECandidate.Proofs.WordStages.source761.2.2 InitECandidate.Proofs.SmallStages.Oracles761.oracle761
