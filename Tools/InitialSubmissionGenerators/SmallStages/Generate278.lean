import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles278
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 278 InitECandidate.Proofs.WordStages.source278.2.1 InitECandidate.Proofs.WordStages.source278.2.2 InitECandidate.Proofs.SmallStages.Oracles278.oracle278
