import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify765
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body781_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body781_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body781_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]]

def body781_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 128#64]]

def body781_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 144#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 192#64]]

def body781_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body781_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body781_7 : Prog (BitVec 64) :=
.seq body781_5 body781_6

def body781_8 : Prog (BitVec 64) :=
.seq body781_4 body781_7

def body781_9 : Prog (BitVec 64) :=
.seq body781_3 body781_8

def body781_10 : Prog (BitVec 64) :=
.seq body781_2 body781_9

def body781_11 : Prog (BitVec 64) :=
.seq body781_1 body781_10

def body781_12 : Prog (BitVec 64) :=
.seq body781_0 body781_11

def body781_13 : Prog (BitVec 64) :=
.decCall ("aff") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body781_12

def body781_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body781_13

def body781_15 : Prog (BitVec 64) :=
.seq body781_0 body781_1

def body781_16 : Prog (BitVec 64) :=
.seq body781_15 body781_2

def body781_17 : Prog (BitVec 64) :=
.seq body781_16 body781_3

def body781_18 : Prog (BitVec 64) :=
.seq body781_17 body781_4

def body781_19 : Prog (BitVec 64) :=
.seq body781_18 body781_5

def body781_20 : Prog (BitVec 64) :=
.seq body781_19 body781_6

def body781_21 : Prog (BitVec 64) :=
.decCall ("aff") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body781_20

def body781_22 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body781_21

def originalData781 : Decl (BitVec 64) :=
.function { name := "g2_encode", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body781_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData781 : Decl (BitVec 64) :=
.function { name := "g2_encode", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body781_22, returnShape := (Flapjack.Shape.one) }
def original781 := Pancake.PanLang.declToHOL originalData781
def simplified781 := Pancake.PanLang.declToHOL simplifiedData781
end InitECandidate.Proofs.FrontendStages.Declarations
