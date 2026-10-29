import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles785
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 785 InitECandidate.Proofs.WordStages.source785.2.1 InitECandidate.Proofs.WordStages.source785.2.2 InitECandidate.Proofs.SmallStages.Oracles785.oracle785
