import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify183
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body199_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "b0",
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b1") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b2") (Flapjack.Exp.const 16#64),
      Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "b3") (Flapjack.Exp.const 24#64)])

def body199_1 : Prog (BitVec 64) :=
.decCall ("b3") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 3#64]]) body199_0

def body199_2 : Prog (BitVec 64) :=
.decCall ("b2") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 2#64]]) body199_1

def body199_3 : Prog (BitVec 64) :=
.decCall ("b1") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64]]) body199_2

def body199_4 : Prog (BitVec 64) :=
.decCall ("b0") (Flapjack.Shape.one) ("host_input_byte") ([Flapjack.Exp.var Flapjack.VarKind.local "i"]) body199_3

def originalData199 : Decl (BitVec 64) :=
.function { name := "host_input_le32", inline := false, exported := false, params := [("i", Flapjack.Shape.one)], body := body199_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData199 : Decl (BitVec 64) :=
.function { name := "host_input_le32", inline := false, exported := false, params := [("i", Flapjack.Shape.one)], body := body199_4, returnShape := (Flapjack.Shape.one) }
def original199 := Pancake.PanLang.declToHOL originalData199
def simplified199 := Pancake.PanLang.declToHOL simplifiedData199
end InitECandidate.Proofs.FrontendStages.Declarations
