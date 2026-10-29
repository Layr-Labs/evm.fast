import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles383
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 383 InitECandidate.Proofs.WordStages.source383.2.1 InitECandidate.Proofs.WordStages.source383.2.2 InitECandidate.Proofs.SmallStages.Oracles383.oracle383
