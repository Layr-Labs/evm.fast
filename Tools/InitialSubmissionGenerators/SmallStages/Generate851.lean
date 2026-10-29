import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles851
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 851 InitECandidate.Proofs.WordStages.source851.2.1 InitECandidate.Proofs.WordStages.source851.2.2 InitECandidate.Proofs.SmallStages.Oracles851.oracle851
