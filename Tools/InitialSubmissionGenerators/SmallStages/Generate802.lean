import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles802
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 802 InitECandidate.Proofs.WordStages.source802.2.1 InitECandidate.Proofs.WordStages.source802.2.2 InitECandidate.Proofs.SmallStages.Oracles802.oracle802
