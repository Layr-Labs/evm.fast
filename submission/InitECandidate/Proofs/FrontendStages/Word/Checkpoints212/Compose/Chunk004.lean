import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Conditional.Chunk004
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Compose.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
theorem node1536_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1096 (276, 2) = (output1536, (276, 62)) :=
  node1536_conditional node1_eq node1535_eq

theorem node1537_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1097 (276, 2) = (output1537, (276, 62)) :=
  node1537_conditional node1536_eq

theorem node1538_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1098 (276, 2) = (output1538, (276, 62)) :=
  node1538_conditional node1_eq node1537_eq

theorem node1539_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1099 (276, 2) = (output1539, (276, 62)) :=
  node1539_conditional node1538_eq

theorem node1540_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1100 (276, 2) = (output1540, (276, 62)) :=
  node1540_conditional node1_eq node1539_eq

theorem node1541_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1101 (276, 2) = (output1541, (276, 62)) :=
  node1541_conditional node1540_eq

theorem node1542_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1102 (276, 2) = (output1542, (276, 62)) :=
  node1542_conditional node1_eq node1541_eq

theorem node1543_eq : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1103 (276, 2) = (output1543, (276, 62)) :=
  node1543_conditional node1542_eq

#print axioms node1543_eq
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
