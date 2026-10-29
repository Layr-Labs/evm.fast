import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles615
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 615 InitECandidate.Proofs.WordStages.source615.2.1 InitECandidate.Proofs.WordStages.source615.2.2 InitECandidate.Proofs.SmallStages.Oracles615.oracle615
