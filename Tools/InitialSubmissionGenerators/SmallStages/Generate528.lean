import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles528
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 528 InitECandidate.Proofs.WordStages.source528.2.1 InitECandidate.Proofs.WordStages.source528.2.2 InitECandidate.Proofs.SmallStages.Oracles528.oracle528
