import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles255
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 255 InitECandidate.Proofs.WordStages.source255.2.1 InitECandidate.Proofs.WordStages.source255.2.2 InitECandidate.Proofs.SmallStages.Oracles255.oracle255
