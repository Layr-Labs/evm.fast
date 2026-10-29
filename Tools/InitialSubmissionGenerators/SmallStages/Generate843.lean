import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles843
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 843 InitECandidate.Proofs.WordStages.source843.2.1 InitECandidate.Proofs.WordStages.source843.2.2 InitECandidate.Proofs.SmallStages.Oracles843.oracle843
