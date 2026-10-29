import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data199
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate179
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody199_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "b0",
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b1") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b2") (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b3") (Flapjack.Exp.const 24#64)])

def globalBody199_1 : Prog (BitVec 64) :=
.decCall ("b3") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 3#64]]) globalBody199_0

def globalBody199_2 : Prog (BitVec 64) :=
.decCall ("b2") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 2#64]]) globalBody199_1

def globalBody199_3 : Prog (BitVec 64) :=
.decCall ("b1") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64]]) globalBody199_2

def globalBody199_4 : Prog (BitVec 64) :=
.decCall ("b0") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody199_3

def globalData199 : Decl (BitVec 64) :=
.function { name := "host_input_le32", inline := false, exported := false, params := [("i", Flapjack.Shape.one)], body := globalBody199_4, returnShape := (Flapjack.Shape.one) }
def globalOutput199 := Pancake.PanLang.declToHOL globalData199
end InitECandidate.Proofs.FrontendStages.Declarations
