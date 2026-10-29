import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify393
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body409_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body409_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body409_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def body409_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "l")

def body409_4 : Prog (BitVec 64) :=
.seq body409_2 body409_3

def body409_5 : Prog (BitVec 64) :=
.seq body409_1 body409_4

def body409_6 : Prog (BitVec 64) :=
.seq body409_0 body409_5

def body409_7 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) body409_6

def body409_8 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body409_7

def body409_9 : Prog (BitVec 64) :=
.seq body409_0 body409_1

def body409_10 : Prog (BitVec 64) :=
.seq body409_9 body409_2

def body409_11 : Prog (BitVec 64) :=
.seq body409_10 body409_3

def body409_12 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) body409_11

def body409_13 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body409_12

def originalData409 : Decl (BitVec 64) :=
.function { name := "lst_new", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body409_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData409 : Decl (BitVec 64) :=
.function { name := "lst_new", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body409_13, returnShape := (Flapjack.Shape.one) }
def original409 := Pancake.PanLang.declToHOL originalData409
def simplified409 := Pancake.PanLang.declToHOL simplifiedData409
end InitECandidate.Proofs.FrontendStages.Declarations
