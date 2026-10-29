import InitECandidate.Proofs.FrontendStages.Word.Checkpoints798.Conditional.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints798.Compose.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
theorem node1536_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1378 (862, 6) = (output1536, (862, 74)) :=
  node1536_conditional node19_eq node1535_eq

theorem node1537_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1379 (862, 4) = (output1537, (862, 74)) :=
  node1537_conditional node25_eq node1536_eq

theorem node1538_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1380 (862, 4) = (output1538, (862, 74)) :=
  node1538_conditional node7_eq node1537_eq

theorem node1539_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1381 (862, 4) = (output1539, (862, 74)) :=
  node1539_conditional node7_eq node1538_eq

theorem node1540_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1382 (862, 2) = (output1540, (862, 74)) :=
  node1540_conditional node11_eq node1539_eq

theorem node1541_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1383 (862, 2) = (output1541, (862, 74)) :=
  node1541_conditional node1_eq node1540_eq

theorem node1542_eq : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1384 (862, 2) = (output1542, (862, 74)) :=
  node1542_conditional node1_eq node1541_eq

#print axioms node1542_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
