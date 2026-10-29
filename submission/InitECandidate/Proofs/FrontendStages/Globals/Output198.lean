import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data198
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody198_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemLoad Flapjack.OpSize.opW Flapjack.VarKind.local "w"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 1073741840#64,
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "i",
          Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]])

def globalBody198_1 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "w")
        (Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 7#64],
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.const 255#64])

def globalBody198_2 : Prog (BitVec 64) :=
.seq globalBody198_0 globalBody198_1

def globalBody198_3 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody198_2

def globalData198 : Decl (BitVec 64) :=
.function { name := "host_input_byte", inline := false, exported := false, params := [("i", Flapjack.Shape.one)], body := globalBody198_3, returnShape := (Flapjack.Shape.one) }
def globalOutput198 := Pancake.PanLang.declToHOL globalData198
end InitECandidate.Proofs.FrontendStages.Declarations
