import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles840
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 840 InitECandidate.Proofs.WordStages.source840.2.1 InitECandidate.Proofs.WordStages.source840.2.2 InitECandidate.Proofs.SmallStages.Oracles840.oracle840
