import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles735
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 735 InitECandidate.Proofs.WordStages.source735.2.1 InitECandidate.Proofs.WordStages.source735.2.2 InitECandidate.Proofs.SmallStages.Oracles735.oracle735
