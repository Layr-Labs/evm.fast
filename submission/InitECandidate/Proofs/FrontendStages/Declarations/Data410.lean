import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify394
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body410_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body410_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body410_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def body410_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "l")

def body410_4 : Prog (BitVec 64) :=
.seq body410_2 body410_3

def body410_5 : Prog (BitVec 64) :=
.seq body410_1 body410_4

def body410_6 : Prog (BitVec 64) :=
.seq body410_0 body410_5

def body410_7 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) body410_6

def body410_8 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) body410_7

def body410_9 : Prog (BitVec 64) :=
.seq body410_0 body410_1

def body410_10 : Prog (BitVec 64) :=
.seq body410_9 body410_2

def body410_11 : Prog (BitVec 64) :=
.seq body410_10 body410_3

def body410_12 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) body410_11

def body410_13 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) body410_12

def originalData410 : Decl (BitVec 64) :=
.function { name := "lst_new_scratch", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body410_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData410 : Decl (BitVec 64) :=
.function { name := "lst_new_scratch", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body410_13, returnShape := (Flapjack.Shape.one) }
def original410 := Pancake.PanLang.declToHOL originalData410
def simplified410 := Pancake.PanLang.declToHOL simplifiedData410
end InitECandidate.Proofs.FrontendStages.Declarations
