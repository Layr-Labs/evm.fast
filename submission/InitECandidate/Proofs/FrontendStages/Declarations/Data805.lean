import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify789
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body805_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g2_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 256#64],
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def body805_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body805_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body805_0 body805_1

def body805_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body805_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body805_5 : Prog (BitVec 64) :=
.seq body805_3 body805_4

def body805_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body805_5 body805_1

def body805_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def body805_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_encode"
  [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body805_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body805_10 : Prog (BitVec 64) :=
.seq body805_3 body805_9

def body805_11 : Prog (BitVec 64) :=
.seq body805_8 body805_10

def body805_12 : Prog (BitVec 64) :=
.seq body805_7 body805_11

def body805_13 : Prog (BitVec 64) :=
.seq body805_6 body805_12

def body805_14 : Prog (BitVec 64) :=
.seq body805_2 body805_13

def body805_15 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g2_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body805_14

def body805_16 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body805_15

def body805_17 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body805_16

def body805_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body805_17

def body805_19 : Prog (BitVec 64) :=
.seq body805_2 body805_6

def body805_20 : Prog (BitVec 64) :=
.seq body805_19 body805_7

def body805_21 : Prog (BitVec 64) :=
.seq body805_20 body805_8

def body805_22 : Prog (BitVec 64) :=
.seq body805_21 body805_3

def body805_23 : Prog (BitVec 64) :=
.seq body805_22 body805_9

def body805_24 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g2_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body805_23

def body805_25 : Prog (BitVec 64) :=
.decCall ("p2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body805_24

def body805_26 : Prog (BitVec 64) :=
.decCall ("p1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body805_25

def body805_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body805_26

def originalData805 : Decl (BitVec 64) :=
.function { name := "bls_g2_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body805_18, returnShape := (Flapjack.Shape.one) }
def simplifiedData805 : Decl (BitVec 64) :=
.function { name := "bls_g2_add_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body805_27, returnShape := (Flapjack.Shape.one) }
def original805 := Pancake.PanLang.declToHOL originalData805
def simplified805 := Pancake.PanLang.declToHOL simplifiedData805
end InitECandidate.Proofs.FrontendStages.Declarations
